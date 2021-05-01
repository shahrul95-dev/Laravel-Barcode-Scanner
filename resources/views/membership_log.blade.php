
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Scan Log') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <div class="p-6 sm:px-20 bg-white border-b border-gray-200">
                    <div class='container'>

                        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                        Scan Log
                        </h2>
                        <br>

                        <table>
                            <tr>
                                <td>
                                    Name: 
                                </td>
                                <td>
                                    {{$memberships->name}} 
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Email: 
                                </td>
                                <td>
                                    {{$memberships->email}} 
                                </td>
                            </tr>
                        </table>



                        <br>
                        <div class="flex flex-col">
                            <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                                <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                                    <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                                        <table class="min-w-full divide-y divide-gray-200">
                                        <thead class="bg-gray-50">
                                            <tr>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                No
                                            </th>
                                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                                Scan Time
                                            </th>
                                            </tr>
                                        </thead>
                                        <tbody class="bg-white divide-y divide-gray-200">

                                        @if(!$scan_log->isEmpty())

                                            @foreach($scan_log as $log)

                                                <tr>
                                                    <td class="px-6 py-4 whitespace-nowrap">
                                                        <div class="flex items-center">
                                                            <div class="ml-4">
                                                                <div class="text-sm font-medium text-gray-900">
                                                                {{ $count++ }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>                                                  

                                                    <td class="px-6 py-4 whitespace-nowrap">
                                                        <div class="flex items-center">
                                                            <div class="ml-4">
                                                                <div class="text-sm font-medium text-gray-900">
                                                                {{ $log->created_at }}
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>

                                                

                                            @endforeach

                                            @else

                                            <td class="px-6 py-4 whitespace-nowrap" colspan='2'>
                                                <div class="flex items-center">
                                                    <div class="ml-4">
                                                        <div class="text-sm font-medium text-gray-900">
                                                        No data available
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>


                                        @endif
                                        </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    
</x-app-layout>

<script>

function disp_barcode(id)
{
    document.getElementById("modal_"+id).style.display = "block";
}

function closed_barcode(id)
{
    document.getElementById("modal_"+id).style.display = "none";
}

</script>

