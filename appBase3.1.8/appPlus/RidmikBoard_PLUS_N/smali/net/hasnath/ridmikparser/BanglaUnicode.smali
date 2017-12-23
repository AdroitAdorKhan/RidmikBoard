.class public Lnet/hasnath/ridmikparser/BanglaUnicode;
.super Ljava/lang/Object;
.source "BanglaUnicode.java"


# instance fields
.field private djkt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private djktt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jkt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    .line 16
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "o"

    const-string v2, "\u0985"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "O"

    const-string v2, "\u0993"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "a"

    const-string v2, "\u0986"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "A"

    const-string v2, "\u0986"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "S"

    const-string v2, "\u09b6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "sh"

    const-string v2, "\u09b6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "\u09b8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Sh"

    const-string v2, "\u09b7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "h"

    const-string v2, "\u09b9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "H"

    const-string v2, "\u09b9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "r"

    const-string v2, "\u09b0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "R"

    const-string v2, "\u09dc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Rh"

    const-string v2, "\u09dd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "k"

    const-string v2, "\u0995"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "K"

    const-string v2, "\u0995"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "q"

    const-string v2, "\u0995"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "qq"

    const-string v2, "\u0981"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "kh"

    const-string v2, "\u0996"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "g"

    const-string v2, "\u0997"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "G"

    const-string v2, "\u0997"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "gh"

    const-string v2, "\u0998"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Ng"

    const-string v2, "\u0999"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "c"

    const-string v2, "\u099a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "C"

    const-string v2, "\u099a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "ch"

    const-string v2, "\u099b"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "j"

    const-string v2, "\u099c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "jh"

    const-string v2, "\u099d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "J"

    const-string v2, "\u099c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "NG"

    const-string v2, "\u099e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "T"

    const-string v2, "\u099f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Th"

    const-string v2, "\u09a0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "TH"

    const-string v2, "\u09ce"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "f"

    const-string v2, "\u09ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "F"

    const-string v2, "\u09ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "ph"

    const-string v2, "\u09ab"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "i"

    const-string v2, "\u0987"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "I"

    const-string v2, "\u0988"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "e"

    const-string v2, "\u098f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "E"

    const-string v2, "\u098f"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "u"

    const-string v2, "\u0989"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "U"

    const-string v2, "\u098a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "b"

    const-string v2, "\u09ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "B"

    const-string v2, "\u09ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "w"

    const-string v2, "\u09ac"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "bh"

    const-string v2, "\u09ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "V"

    const-string v2, "\u09ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "\u09ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "t"

    const-string v2, "\u09a4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "th"

    const-string v2, "\u09a5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "d"

    const-string v2, "\u09a6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "dh"

    const-string v2, "\u09a7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "D"

    const-string v2, "\u09a1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Dh"

    const-string v2, "\u09a2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "n"

    const-string v2, "\u09a8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "N"

    const-string v2, "\u09a3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "z"

    const-string v2, "\u09af"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "Z"

    const-string v2, "\u09af"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "y"

    const-string v2, "\u09df"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "l"

    const-string v2, "\u09b2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "L"

    const-string v2, "\u09b2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "m"

    const-string v2, "\u09ae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "M"

    const-string v2, "\u09ae"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "P"

    const-string v2, "\u09aa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "p"

    const-string v2, "\u09aa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "ng"

    const-string v2, "\u0982"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "cb"

    const-string v2, "\u0981"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "x"

    const-string v2, "\u0995\u09cd\u09b8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "OU"

    const-string v2, "\u0994"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "OI"

    const-string v2, "\u0990"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "hs"

    const-string v2, "\u09cd"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "nj"

    const-string v2, "\u099e\u09cd\u099c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "nc"

    const-string v2, "\u099e\u09cd\u099a"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    const-string v1, "gg"

    const-string v2, "\u099c\u09cd\u099e"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "o"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "a"

    const-string v2, "\u09be"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "A"

    const-string v2, "\u09be"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "e"

    const-string v2, "\u09c7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "E"

    const-string v2, "\u09c7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "O"

    const-string v2, "\u09cb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "OI"

    const-string v2, "\u09c8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "OU"

    const-string v2, "\u09cc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "i"

    const-string v2, "\u09bf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "I"

    const-string v2, "\u09c0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "u"

    const-string v2, "\u09c1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "U"

    const-string v2, "\u09c2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    const-string v1, "oo"

    const-string v2, "\u09c1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "k"

    const-string v2, "kTtnNslw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "g"

    const-string v2, "gnNmlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "ch"

    const-string v2, "w"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "Ng"

    const-string v2, "gkm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "NG"

    const-string v2, "cj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "g"

    const-string v2, "gnNmlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "G"

    const-string v2, "gnNmlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "th"

    const-string v2, "w"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "gh"

    const-string v2, "Nn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "c"

    const-string v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "j"

    const-string v2, "jw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "T"

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "D"

    const-string v2, "D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "R"

    const-string v2, "g"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "N"

    const-string v2, "DNmwT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "t"

    const-string v2, "tnmwN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "d"

    const-string v2, "wdmv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "dh"

    const-string v2, "wn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "n"

    const-string v2, "ndwmtsDT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "p"

    const-string v2, "plTtns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "f"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "ph"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "b"

    const-string v2, "jdbwl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "bh"

    const-string v2, "l"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "m"

    const-string v2, "npfwvmlb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "l"

    const-string v2, "lwmpkgTDf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "Sh"

    const-string v2, "kTNpmf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "S"

    const-string v2, "clwnm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "sh"

    const-string v2, "clwnm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "s"

    const-string v2, "kTtnpfmlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "h"

    const-string v2, "Nnmlw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "cb"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "jh"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "TH"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "qq"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "ng"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "kh"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "gg"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "dh"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    const-string v1, "Th"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "kh"

    const-string v2, "Ngs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "ch"

    const-string v2, "c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "Dh"

    const-string v2, "N"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "ph"

    const-string v2, "mls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "dh"

    const-string v2, "gdnbl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "bh"

    const-string v2, "dm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "Sh"

    const-string v2, "k"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "th"

    const-string v2, "tns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "Th"

    const-string v2, "Nn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "jh"

    const-string v2, "j"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    const-string v1, "NG"

    const-string v2, "cj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    const-string v1, "ch"

    const-string v2, "NG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    const-string v1, "gh"

    const-string v2, "Ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    const-string v1, "Th"

    const-string v2, "Sh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    const-string v1, "jh"

    const-string v2, "NG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    const-string v1, "sh"

    const-string v2, "ch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "a"    # [Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lnet/hasnath/ridmikparser/RidmikParser;->main([Ljava/lang/String;)V

    .line 196
    return-void
.end method


# virtual methods
.method public get(C)Ljava/lang/String;
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 174
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDjkt(CC)Ljava/lang/String;
    .locals 3
    .param p1, "secondCarry"    # C
    .param p2, "carry"    # C

    .prologue
    .line 189
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djkt:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDjktt(CC)Ljava/lang/String;
    .locals 3
    .param p1, "secondCarry"    # C
    .param p2, "carry"    # C

    .prologue
    .line 192
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->djktt:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDual(CC)Ljava/lang/String;
    .locals 3
    .param p1, "x"    # C
    .param p2, "carry"    # C

    .prologue
    .line 171
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->map:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDualJkt(CC)Ljava/lang/String;
    .locals 3
    .param p1, "secondCarry"    # C
    .param p2, "carry"    # C

    .prologue
    .line 186
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDualKar(CC)Ljava/lang/String;
    .locals 3
    .param p1, "x"    # C
    .param p2, "carry"    # C

    .prologue
    .line 180
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJkt(C)Ljava/lang/String;
    .locals 2
    .param p1, "carry"    # C

    .prologue
    .line 183
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->jkt:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKar(C)Ljava/lang/String;
    .locals 2
    .param p1, "x"    # C

    .prologue
    .line 177
    iget-object v0, p0, Lnet/hasnath/ridmikparser/BanglaUnicode;->kars:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
