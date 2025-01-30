[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Table = let
  Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WSlTSUTJUitWJVkoCsoyUYmMB", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [Column1 = _t, Column2 = _t]),
  #"Changed column type" = Table.TransformColumnTypes(Source, {{"Column1", type text}, {"Column2", Int64.Type}})
in
  #"Changed column type";
