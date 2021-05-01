

<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Scan') }}
        </h2>
    </x-slot>
    
    <script src="https://cdn.rawgit.com/serratus/quaggaJS/0420d5e0/dist/quagga.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>

    /* In order to place the tracking correctly */
    canvas.drawing, canvas.drawingBuffer {
        position: absolute;
        left: 0;
        top: 0;
        display:none;
    }
    #scanner-container
    {
        padding-left:26%;


    }

    #loading-image
    {
        padding-left:5%;
    }

    @media only screen and (max-width: 600px) 
    {
        #scanner-container
        {
            padding-left:0%;
        }

        #loading-image
        {
            padding-left:0%;
        }
    }
</style>

<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                    <div class='container'>

                        <div class="py-12 text-center">
                            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                                <div>
                                    
                                    <!-- Div to show the scanner -->
                                    <div id="scanner-container"></div>

                                    <input type="button" style='cursor:pointer' class='mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm'
                                    id="btn" value="Stop the scanner" />

                                    <!-- Include the image-diff library
                                    <script src="quagga.min.js"></script> -->

                                    <script>
                                        startScanner();

                                        var _scannerIsRunning = false;

                                        function startScanner() {
                                            Quagga.init({
                                                inputStream: {
                                                    name: "Live",
                                                    type: "LiveStream",
                                                    target: document.querySelector('#scanner-container'),
                                                    constraints: {
                                                        width: 480,
                                                        height: 320,
                                                        facingMode: "environment"
                                                    },
                                                },
                                                decoder: {
                                                    readers: [
                                                        "code_128_reader",
                                                        "ean_reader",
                                                        "ean_8_reader",
                                                        "code_39_reader",
                                                        "code_39_vin_reader",
                                                        "codabar_reader",
                                                        "upc_reader",
                                                        "upc_e_reader",
                                                        "i2of5_reader"
                                                    ],
                                                    debug: {
                                                        showCanvas: true,
                                                        showPatches: true,
                                                        showFoundPatches: true,
                                                        showSkeleton: true,
                                                        showLabels: true,
                                                        showPatchLabels: true,
                                                        showRemainingPatchLabels: true,
                                                        boxFromPatches: {
                                                            showTransformed: true,
                                                            showTransformedBox: true,
                                                            showBB: true
                                                        }
                                                    }
                                                },

                                            }, function (err) {
                                                if (err) {
                                                    console.log('test');
                                                    return
                                                }

                                                console.log("Initialization finished. Ready to start");
                                                Quagga.start();

                                                // Set flag to is running
                                                _scannerIsRunning = true;
                                            });

                                            Quagga.onProcessed(function (result) {
                                                var drawingCtx = Quagga.canvas.ctx.overlay,
                                                drawingCanvas = Quagga.canvas.dom.overlay;

                                                if (result) {
                                                    if (result.boxes) {
                                                        drawingCtx.clearRect(0, 0, parseInt(drawingCanvas.getAttribute("width")), parseInt(drawingCanvas.getAttribute("height")));
                                                        result.boxes.filter(function (box) {
                                                            return box !== result.box;
                                                        }).forEach(function (box) {
                                                            Quagga.ImageDebug.drawPath(box, { x: 0, y: 1 }, drawingCtx, { color: "green", lineWidth: 2 });
                                                        });
                                                    }

                                                    if (result.box) {
                                                        Quagga.ImageDebug.drawPath(result.box, { x: 0, y: 1 }, drawingCtx, { color: "#00F", lineWidth: 2 });
                                                    }

                                                    if (result.codeResult && result.codeResult.code) {
                                                        Quagga.ImageDebug.drawPath(result.line, { x: 'x', y: 'y' }, drawingCtx, { color: 'red', lineWidth: 3 });
                                                    }
                                                }
                                            });


                                            Quagga.onDetected(function (result) {
                                                // console.log("Barcode detected and processed : [" + result.codeResult.code + "]", result);
                                                $.ajaxSetup({
                                                    headers: {
                                                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                                                        }
                                                    });

                                                $.ajax({
                                                    type:'POST',
                                                    url: './scan_result/'+result.codeResult.code,
                                                    data:{
                                                        scan:'true',
                                                    },
                                                    success:function(data_received){
                                                     
                                                        var data_received = jQuery.parseJSON( data_received );

                                                        if(data_received['status'] == 0)
                                                        {
                                                            document.getElementById("membership_deactivated").style.display = "block";

                                                            document.getElementById('membership_name_2').innerHTML = data_received['name'];

                                                            document.getElementById('membership_email_2').innerHTML = data_received['email'];
                                                            

                                                        }
                                                        else if(data_received['status'] == 1)
                                                        {
                                                            document.getElementById("membership_activated").style.display = "block";

                                                            document.getElementById('membership_name').innerHTML = data_received['name'];

                                                            document.getElementById('membership_email').innerHTML = data_received['email'];
                                                            
                                                            document.getElementById('membership_log').innerHTML = "<a href='/membership_log/"+data_received['id']+"' style='color:blue'> Click here </a>";

                                                            $.ajax({
                                                                type:'POST',
                                                                url: './scan_result/insert/'+result.codeResult.code,
                                                                data:{
                                                                    scan:'true',
                                                                },
                                                                success:function(data_received_log){
                                                                    console.log(data_received_log);
                                                                }
                                                            });
                                                        }

                                                    }
                                                });
                                            });
                                        }


                                        // Start/stop scanner
                                        document.getElementById("btn").addEventListener("click", function () {
                                            if (_scannerIsRunning) {
                                                Quagga.stop();
                                            } else {
                                                startScanner();
                                            }
                                        }, false);
                                    </script>
                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="fixed z-10 inset-0 overflow-y-auto" style='display:none;max-width:100%;position:absolute;' id='membership_activated' aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">

            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>

            <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                <div class="mx-auto flex-shrink-0 flex items-center justify-center h-12 w-12 rounded-full bg-green-100 sm:mx-0 sm:h-10 sm:w-10">

                    <svg class="h-6 w-6 text-green-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="3 3 52 52" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M48.9,17.4c3.1,5.8,3.9,12.9,1.4,19.7c-4.6,12.4-18.4,18.8-30.8,14.3S0.7,33,5.2,20.5S23.6,1.7,36,6.3" />
                    <polyline class="tick" fill="none" stroke="green" stroke-width="4" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" points="
                    20.3,25.4 28.6,33.9 46.7,8.3 "/>
                    </svg>

                </div>
                <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                    <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
                    Membership is Active
                    </h3>
                    <div class="mt-2">
                    <p class="text-sm text-gray-500">
                        
                        <table>
                            <tr>
                                <td>
                                    Name&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>
                                    <i id='membership_name'></i>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Email&nbsp;&nbsp;&nbsp;  
                                </td>
                                <td>
                                    <i id='membership_email'></i>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Log&nbsp;&nbsp;&nbsp;  
                                </td>
                                <td>
                                    <i id='membership_log'></i>
                                </td>
                            </tr>

                        </table>
          
                    </p>
                    </div>
                </div>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button type="button" onclick="modal_closed(1)" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
                Cancel
                </button>
            </div>
            </div>
        </div>
    </div>
    
    <div class="fixed z-10 inset-0 overflow-y-auto" style='display:none;max-width:100%;position:absolute;' id='membership_deactivated' aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">

            <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>

            <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>

            <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                <div class="mx-auto flex-shrink-0 flex items-center justify-center h-12 w-12 rounded-full bg-red-100 sm:mx-0 sm:h-10 sm:w-10">
                    <svg class="h-6 w-6 text-red-600" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z" />
                    </svg>
                </div>
                <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                    <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
                    Membership is Not Active
                    </h3>
                    <div class="mt-2" >

                    <p class="text-sm text-gray-500">

                        Name  :<br><i id='membership_name_2'></i>
                        <br><br>
                        Email :<br><i id='membership_email_2'></i>

                    </p>
                    </div>
                </div>
                </div>
            </div>
            <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button type="button" onclick="modal_closed(2)" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
                Cancel
                </button>
            </div>
            </div>
        </div>
    </div>

</x-app-layout>

<script>
$(window).load(function() {
    $('#loading').hide();
});

function modal_closed(id)
{
    if(id == 1)
    {
        document.getElementById("membership_activated").style.display = "none";

        location.reload();

        $("#membership_activated").html("");

    }
    else
    {
        document.getElementById("membership_deactivated").style.display = "none"; 


        location.reload();

        $("#membership_deactivated").html("");

    }
}

</script>