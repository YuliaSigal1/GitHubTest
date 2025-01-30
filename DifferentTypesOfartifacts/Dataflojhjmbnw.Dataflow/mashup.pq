[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Query = let
  Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WSlXSUTJSitWJVioCsozBrDIgy0QpNhYA", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [Column1 = _t, Column2 = _t])
in
  Source;
