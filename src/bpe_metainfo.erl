-module(bpe_metainfo).
-include_lib("kvs/include/metainfo.hrl").
-include("bpe.hrl").
-compile(export_all).

metainfo() ->
    #schema{name = bpe, tables = 
                [
                 #table{name = process, fields=record_info(fields, process)},
                 #table{name = history, fields=record_info(fields, history)},
                 #table{name = sequenceFlow, fields=record_info(fields, sequenceFlow)},
                 #table{name = userTask, fields=record_info(fields, userTask)},
                 #table{name = serviceTask, fields=record_info(fields, serviceTask)},
                 #table{name = messageEvent, fields=record_info(fields, messageEvent)},
                 #table{name = startEvent, fields=record_info(fields, startEvent)},
                 #table{name = endEvent, fields=record_info(fields, endEvent)}
                ]
           }.