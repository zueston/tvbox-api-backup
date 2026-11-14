.class public final synthetic Ly44;
.super Ljava/lang/Object;
.source "r8-map-id-dd13a6844b97fe71737b3399990c78371ab2a20014760fd882c7408a20d173ea"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:B

.field public final synthetic g:La54;


# direct methods
.method public synthetic constructor <init>(La54;B)V
    .locals 0

    .line 1
    iput-byte p2, p0, Ly44;->c:B

    .line 2
    .line 3
    iput-object p1, p0, Ly44;->g:La54;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    return-void

    .line 1
    iget-byte v0, p0, Ly44;->c:B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Ly44;->g:La54;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, La54;->f:Z

    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iput-boolean v1, p0, La54;->f:Z

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const-string v0, "leanback-"

    .line 19
    .line 20
    :try_start_0
    invoke-static {}, Lcom/github/catvod/utils/PackageAbi;->get()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/16 v2, 0x2d

    .line 25
    .line 26
    const/16 v3, 0x5f

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ".apk"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lorg/json/JSONArray;

    .line 50
    .line 51
    const-string v2, "https://api.github.com/repos/FongMi/Release/releases?per_page=100"

    .line 52
    .line 53
    invoke-static {v2}, Lcom/github/catvod/net/OkHttp;->string(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v1, v0}, Lno;->P(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    new-instance v0, Ly44;

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    invoke-direct {v0, p0, v1}, Ly44;-><init>(La54;B)V

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lcom/fongmi/android/tv/App;->a(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0, v1, v0}, La54;->e(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    new-instance v0, Ly44;

    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    invoke-direct {v0, p0, v1}, Ly44;-><init>(La54;B)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Lcom/fongmi/android/tv/App;->a(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :pswitch_2
    invoke-virtual {p0}, La54;->a()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
