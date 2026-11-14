.class public Lcom/fongmi/android/tv/bean/Site;
.super Ljava/lang/Object;
.source "r8-map-id-dd13a6844b97fe71737b3399990c78371ab2a20014760fd882c7408a20d173ea"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/fongmi/android/tv/bean/Site;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private api:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "api"
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changeable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "changeable"
    .end annotation
.end field

.field private click:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "click"
    .end annotation
.end field

.field private danmaku:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "danmaku"
    .end annotation
.end field

.field private ext:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Lmw0;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ext"
    .end annotation
.end field

.field private header:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/JsonAdapter;
        value = Ly81;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "header"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hide:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hide"
    .end annotation
.end field

.field private indexs:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "indexs"
    .end annotation
.end field

.field private jar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jar"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "key"
    .end annotation
.end field

.field private lang:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lang"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private playUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playUrl"
    .end annotation
.end field

.field private quickSearch:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "quickSearch"
    .end annotation
.end field

.field private searchable:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchable"
    .end annotation
.end field

.field private selected:Z

.field private style:Lcom/fongmi/android/tv/bean/Style;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "style"
    .end annotation
.end field

.field private timeout:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeout"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/fongmi/android/tv/bean/Site$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fongmi/android/tv/bean/Site$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fongmi/android/tv/bean/Site;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->lang:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->api:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->ext:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->jar:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->click:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->playUrl:Ljava/lang/String;

    .line 51
    .line 52
    const-class v0, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->type:Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/Integer;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->indexs:Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/Integer;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->timeout:Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Integer;

    .line 99
    .line 100
    iput-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Ljava/lang/Integer;

    .line 111
    .line 112
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->categories:Ljava/util/List;

    .line 119
    .line 120
    const-class v0, Lcom/fongmi/android/tv/bean/Style;

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/fongmi/android/tv/bean/Style;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->style:Lcom/fongmi/android/tv/bean/Style;

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_0

    .line 139
    .line 140
    const/4 p1, 0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_0
    const/4 p1, 0x0

    .line 143
    :goto_0
    iput-boolean p1, p0, Lcom/fongmi/android/tv/bean/Site;->selected:Z

    .line 144
    .line 145
    return-void
.end method

.method public static findAll()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fongmi/android/tv/bean/Site;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/fongmi/android/tv/db/AppDatabase;->o()Lcom/fongmi/android/tv/db/AppDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/fongmi/android/tv/db/AppDatabase;->u()Luh3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Luh3;->g:Lcom/fongmi/android/tv/db/AppDatabase_Impl;

    .line 10
    .line 11
    new-instance v1, Lw00;

    .line 12
    .line 13
    const/16 v2, 0x16

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lw00;-><init>(B)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v2, v3, v1}, Lc60;->a(Le73;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/fongmi/android/tv/bean/Site;->filterHidden(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static filterHidden(Ljava/util/List;)Ljava/util/List;
    .locals 5
    if-eqz p0, :cond_null
    invoke-static {}, Lcom/fongmi/hide/Block;->isBlockOn()Z
    move-result v0
    if-eqz v0, :cond_null
    # 时序兜底：缓存为空（首次启动）时同步拉一次关键字，保证过滤词表就绪
    invoke-static {}, Lcom/fongmi/hide/Block;->getKeys()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
    move-result v4
    if-nez v4, :cond_null_init
    invoke-static {}, Lcom/fongmi/hide/Block;->refreshKeys()Z
    :cond_null_init
    new-instance v0, Ljava/util/ArrayList;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :cond_done
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    move-object v3, v2
    check-cast v3, Lcom/fongmi/android/tv/bean/Site;
    invoke-virtual {v3}, Lcom/fongmi/android/tv/bean/Site;->isHide()Z
    move-result v3
    if-nez v3, :cond_goto
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :cond_goto
    goto :goto_f
    :cond_done
    return-object v0
    :cond_null
    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Site;
    .locals 1

    .line 1
    new-instance v0, Lcom/fongmi/android/tv/bean/Site;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fongmi/android/tv/bean/Site;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/fongmi/android/tv/bean/Site;->setKey(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/fongmi/android/tv/bean/Site;->setName(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static lambda$saveSettings$0(Ljava/util/List;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/fongmi/android/tv/db/AppDatabase;->o()Lcom/fongmi/android/tv/db/AppDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/fongmi/android/tv/db/AppDatabase;->u()Luh3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Luh3;->g:Lcom/fongmi/android/tv/db/AppDatabase_Impl;

    .line 10
    .line 11
    new-instance v2, Lth3;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v0, p0, v3}, Lth3;-><init>(Luh3;Ljava/util/List;B)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {v1, v3, p0, v2}, Lc60;->a(Le73;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static objectFrom(Lcom/google/gson/JsonElement;Ljava/lang/String;)Lcom/fongmi/android/tv/bean/Site;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/fongmi/android/tv/App;->k:Lcom/fongmi/android/tv/App;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/fongmi/android/tv/App;->g:Lcom/google/gson/Gson;

    .line 4
    .line 5
    const-class v1, Lcom/fongmi/android/tv/bean/Site;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/fongmi/android/tv/bean/Site;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getJar()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setJar(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getApi()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lv54;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setApi(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getExt()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Lv54;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setExt(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->trans()Lcom/fongmi/android/tv/bean/Site;

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return-object p0

    .line 53
    :catch_0
    new-instance p0, Lcom/fongmi/android/tv/bean/Site;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/fongmi/android/tv/bean/Site;-><init>()V

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method public static synthetic r(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/fongmi/android/tv/bean/Site;->lambda$saveSettings$0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static saveSettings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fongmi/android/tv/bean/Site;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/fongmi/android/tv/bean/Site;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/fongmi/android/tv/bean/Site;->snapshot()Lcom/fongmi/android/tv/bean/Site;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Llr1;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, v1}, Llr1;-><init>(Ljava/util/ArrayList;B)V

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Lcom/github/catvod/utils/Task;->executeSerial(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private snapshot()Lcom/fongmi/android/tv/bean/Site;
    .locals 2

    .line 1
    new-instance v0, Lcom/fongmi/android/tv/bean/Site;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fongmi/android/tv/bean/Site;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v1, v0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 15
    .line 16
    iput-object p0, v0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/fongmi/android/tv/bean/Site;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Lcom/fongmi/android/tv/bean/Site;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public fetchExt()Lcom/fongmi/android/tv/bean/Site;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getExt()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "http"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getExt()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/github/catvod/net/OkHttp;->string(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/bean/Site;->setExt(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object p0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->api:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->api:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->categories:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->categories:Ljava/util/List;

    .line 9
    .line 10
    return-object p0
.end method

.method public getChangeable()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getClick()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->click:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->click:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getDanmaku()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->danmaku:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->danmaku:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->ext:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->ext:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->header:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->header:Ljava/util/Map;

    .line 12
    .line 13
    return-object p0
.end method

.method public getHide()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->hide:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->hide:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getIndexs()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->indexs:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->indexs:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getJar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->jar:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->jar:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->lang:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->lang:Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->playUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->playUrl:Ljava/lang/String;

    .line 13
    .line 14
    return-object p0
.end method

.method public getQuickSearch()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->quickSearch:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->quickSearch:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getSearchable()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getStyle()Lcom/fongmi/android/tv/bean/Style;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->style:Lcom/fongmi/android/tv/bean/Style;

    return-object p0
.end method

.method public getStyle(Lcom/fongmi/android/tv/bean/Style;)Lcom/fongmi/android/tv/bean/Style;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getStyle()Lcom/fongmi/android/tv/bean/Style;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getStyle()Lcom/fongmi/android/tv/bean/Style;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    invoke-static {}, Lcom/fongmi/android/tv/bean/Style;->rect()Lcom/fongmi/android/tv/bean/Style;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public getTimeout()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->timeout:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x3a98

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->timeout:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    int-to-long v0, p0

    .line 20
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    return-wide v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->type:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/fongmi/android/tv/bean/Site;->type:Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public isChangeable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getChangeable()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public isHide()Z
    .locals 2
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getHide()Ljava/lang/Integer;
    move-result-object v0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    move-result v0
    const/4 v1, 0x1
    if-ne v0, v1, :cond_blockchk
    return v1
    :cond_blockchk
    invoke-static {}, Lcom/fongmi/hide/Block;->isBlockOn()Z
    move-result v0
    if-eqz v0, :cond_vis
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getName()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/fongmi/hide/Block;->isBlocked(Ljava/lang/String;)Z
    move-result v0
    return v0
    :cond_vis
    const/4 v0, 0x0
    return v0
.end method

.method public isIndex()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getIndexs()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isQuickSearch()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getQuickSearch()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isSearchable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getSearchable()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/fongmi/android/tv/bean/Site;->selected:Z

    .line 2
    .line 3
    return p0
.end method

.method public recent()Lcom/fongmi/android/tv/bean/Site;
    .locals 4

    .line 1
    sget-object v0, Lui;->a:Lvi;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getApi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getJar()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lvi;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public save()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/fongmi/android/tv/db/AppDatabase;->o()Lcom/fongmi/android/tv/db/AppDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/fongmi/android/tv/db/AppDatabase;->u()Luh3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, v0, Luh3;->g:Lcom/fongmi/android/tv/db/AppDatabase_Impl;

    .line 10
    .line 11
    new-instance v2, Lsh3;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v0, p0, v3}, Lsh3;-><init>(Luh3;Lcom/fongmi/android/tv/bean/Site;B)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    invoke-static {v1, v3, p0, v2}, Lc60;->a(Le73;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public saveSettings()V
    .locals 2

    .line 44
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 46
    invoke-static {p0}, Lcom/fongmi/android/tv/bean/Site;->saveSettings(Ljava/util/List;)V

    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->api:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->categories:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setChangeable(Z)Lcom/fongmi/android/tv/bean/Site;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getChangeable()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setChangeable(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object p0
.end method

.method public setChangeable(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->ext:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public setJar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->jar:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSearchable(Z)Lcom/fongmi/android/tv/bean/Site;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getSearchable()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x2

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setSearchable(Ljava/lang/Integer;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-object p0
.end method

.method public setSearchable(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    return-void
.end method

.method public setSelected(Lcom/fongmi/android/tv/bean/Site;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/fongmi/android/tv/bean/Site;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iput-boolean p1, p0, Lcom/fongmi/android/tv/bean/Site;->selected:Z

    .line 6
    .line 7
    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/fongmi/android/tv/bean/Site;->selected:Z

    return-void
.end method

.method public spider()Lcom/github/catvod/crawler/Spider;
    .locals 4

    .line 1
    sget-object v0, Lui;->a:Lvi;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getKey()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getApi()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getExt()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getJar()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, v1, v2, v3, p0}, Lvi;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/catvod/crawler/Spider;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public sync(Lcom/fongmi/android/tv/bean/Site;)Lcom/fongmi/android/tv/bean/Site;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getChangeable()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Site;->getChangeable()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/bean/Site;->setChangeable(Ljava/lang/Integer;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getSearchable()Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/fongmi/android/tv/bean/Site;->getSearchable()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/fongmi/android/tv/bean/Site;->setSearchable(Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return-object p0
.end method

.method public trans()Lcom/fongmi/android/tv/bean/Site;
    .locals 3

    .line 1
    invoke-static {}, Lcom/github/catvod/utils/Trans;->pass()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/github/catvod/utils/Trans;->s2t(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/fongmi/android/tv/bean/Site;->getCategories()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lmn2;

    .line 25
    .line 26
    const/16 v2, 0xc

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lmn2;-><init>(B)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lj$/util/stream/Stream$-EL;->toList(Ljava/util/stream/Stream;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/fongmi/android/tv/bean/Site;->setCategories(Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->key:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->lang:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->api:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->ext:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->jar:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->click:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->playUrl:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->type:Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->indexs:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->timeout:Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->searchable:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->changeable:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->categories:Ljava/util/List;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/fongmi/android/tv/bean/Site;->style:Lcom/fongmi/android/tv/bean/Style;

    .line 72
    .line 73
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 74
    .line 75
    .line 76
    iget-boolean p0, p0, Lcom/fongmi/android/tv/bean/Site;->selected:Z

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
