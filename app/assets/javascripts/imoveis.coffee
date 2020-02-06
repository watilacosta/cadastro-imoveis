$(document).on 'turbolinks:load', ->

  $('#modal-window').on 'show.bs.modal', (e) ->
    area_terreno           = 0.0
    area_construida        = 0.0
    area_total             = 0.0
    valor_venal_terreno    = 0.0
    valor_venal_construcao = 0.0
    valor_venal_total      = 0.0
    aliquota               = 0.0
    valorImposto           = 0.0
    
    ############################# FUNÇÕES #################################
    areaTotal = ->
      area_total = area_terreno + area_construida
      $('#imovel_area_total').val(area_total)
      $("#area_total").html(area_total + ' m²')
      return

    valorVenalTotal = ->
      valor_venal_total = valor_venal_terreno + valor_venal_construcao
      $('#imovel_valor_venal_total').val(valor_venal_total)
      $('#vlr_venal_total').html('R$ ' + valor_venal_total)
      return

    calcValorImposto = ->
      valorImposto = valor_venal_total * (aliquota / 100)
      $('#imovel_valor_imposto').val(valorImposto)
      console.log("Valor Imposto " + valorImposto)
      return

    ############################## EVENTOS ###############################
    $('#imovel_area_terreno').bind 'blur', ->
      area_terreno = parseFloat($(this).val())
      areaTotal()
      return

    $('#imovel_area_construida').bind 'blur', ->
      area_construida = parseFloat($(this).val())
      areaTotal()
      return

    $('#imovel_valor_venal_terreno').bind 'blur', ->
      valor_venal_terreno = parseFloat($(this).val())
      valorVenalTotal()
      calcValorImposto()
      return

    $('#imovel_valor_venal_construcao').bind 'blur', ->
      valor_venal_construcao = parseFloat($(this).val())
      valorVenalTotal()
      calcValorImposto()
      return

    $('#imovel_aliquota').bind 'blur', ->
      aliquota = parseFloat($(this).val())
      calcValorImposto()
      return

    return