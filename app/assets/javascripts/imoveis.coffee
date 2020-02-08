# $(document).on 'turbolinks:load', ->

#   $('#modal-window').on 'show.bs.modal', (e) ->
#     area_terreno           = $('#imovel_area_terreno').val()
#     area_construida        = $('#imovel_area_construida').val()
#     area_total             = $('#imovel_area_total').val()
#     valor_venal_terreno    = $('#imovel_valor_venal_terreno').val()
#     valor_venal_construcao = $('#imovel_valor_venal_construcao').val()
#     valor_venal_total      = $('#imovel_valor_venal_total').val()
#     aliquota               = $('#imovel_aliquota').val()
#     valorImposto           = $('#imovel_valor_imposto').val()
    
#     ############################# FUNÇÕES #################################

#     areaTotal = ->
#       area_total = area_terreno + area_construida
#       $('#imovel_area_total').prop('readonly', false)
#       $('#imovel_area_total').val(area_total)
#       $('#imovel_area_total').prop('readonly', true)
#       return

#     valorVenalTotal = ->
#       valor_venal_total = valor_venal_terreno + valor_venal_construcao
#       $('#imovel_valor_venal_total').val(valor_venal_total)
#       return

#     calcValorImposto = ->
#       valorImposto = valor_venal_total * (aliquota / 100)
#       $('#imovel_valor_imposto').val(valorImposto)
#       return


#     ############################## EVENTOS ###############################

#     $('#btn_submit_imovel').on 'click', (e) ->
#       $('#imovel_area_total').prop('readonly', false)
#       $('#imovel_valor_venal_total').prop('readonly', false)
#       $('#imovel_valor_imposto').prop('readonly', false)
#       return

#     $('#imovel_area_terreno').bind 'blur', ->
#       area_terreno = parseFloat($(this).val())
#       areaTotal()
#       return

#     $('#imovel_area_construida').bind 'blur', ->
#       area_construida = parseFloat($(this).val())
#       areaTotal()
#       return

#     $('#imovel_valor_venal_terreno').bind 'blur', ->
#       valor_venal_terreno = parseFloat($(this).val())
#       valorVenalTotal()
#       calcValorImposto()
#       return

#     $('#imovel_valor_venal_construcao').bind 'blur', ->
#       valor_venal_construcao = parseFloat($(this).val())
#       valorVenalTotal()
#       calcValorImposto()
#       return

#     $('#imovel_aliquota').on 'click', ->
#       aliquota = parseFloat($(this).val())
#       calcValorImposto()
#       return

#     return