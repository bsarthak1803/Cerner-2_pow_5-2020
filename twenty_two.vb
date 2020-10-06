' cerner_2^5_2020
' regex to find words starting with 'S'

Imports System.Text.RegularExpressions
Module regexProg
   Sub showMatch(ByVal text As String, ByVal expr As String)
      Console.WriteLine("The Expression: " + expr)
      Dim mc As MatchCollection = Regex.Matches(text, expr)
      Dim m As Match
      Console.WriteLine("The matching words are:")
      For Each m In mc
          Console.WriteLine(m)
      Next m
   End Sub
   Sub Main()
      Dim str As String = "A Thousand Splendid Suns"
      Console.WriteLine("Matching words that start with 'S': ")
      showMatch(str, "\bS\S*")
      Console.ReadKey()
   End Sub
End Module