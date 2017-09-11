USE [dbOMSGrocery_UAT]
GO
/****** Object:  StoredProcedure [dbo].[prc_DctoTributarioUpdatePOSResponce]    Script Date: 9/11/2017 10:12:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[prc_DctoTributarioUpdatePOSResponce]
@SG VARCHAR(20)
,@TipoDcto INT
,@Folio VARCHAR(20)
,@POS INT
,@TRX INT
,@FechaDcto DATETIME

AS
IF @TipoDcto = 3
BEGIN
	SET @SG = (SELECT SgPadre FROM ORDERSG WHERE ShippingOrderId = @SG)
END

UPDATE [DctoTributario]
SET [Folio] = @Folio
	,[POS] = @POS
	,[TRX] = @TRX	
	,[FechaEmisionDcto] = @FechaDcto
WHERE CONVERT(VARCHAR(20),[IDOrdenCliente]) = @SG
AND [TipoDcto] = @TipoDcto
AND FOLIO IS NULL

UPDATE [OrderSG]
SET [Folio] = CONVERT(VARCHAR(20), @Folio) 
,[POS] = @POS
,[TRX] = @TRX	
WHERE [OrderSG].[ShippingOrderId] = @SG
AND FOLIO IS NULL
AND @TipoDcto IN (1,2)
