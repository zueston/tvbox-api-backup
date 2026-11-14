.class public final enum Lcom/github/catvod/utils/RuntimeModule;
.super Ljava/lang/Enum;
.source "r8-map-id-dd13a6844b97fe71737b3399990c78371ab2a20014760fd882c7408a20d173ea"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/catvod/utils/RuntimeModule$External;,
        Lcom/github/catvod/utils/RuntimeModule$Metadata;,
        Lcom/github/catvod/utils/RuntimeModule$PluginLoader;,
        Lcom/github/catvod/utils/RuntimeModule$Payload;,
        Lcom/github/catvod/utils/RuntimeModule$Packages;,
        Lcom/github/catvod/utils/RuntimeModule$MissingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/catvod/utils/RuntimeModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/catvod/utils/RuntimeModule;

.field public static final enum BDJ:Lcom/github/catvod/utils/RuntimeModule;

.field public static final enum MPV:Lcom/github/catvod/utils/RuntimeModule;

.field public static final enum NODEJS:Lcom/github/catvod/utils/RuntimeModule;

.field public static final enum PYTHON:Lcom/github/catvod/utils/RuntimeModule;

.field public static final enum QUICKJS:Lcom/github/catvod/utils/RuntimeModule;

.field private static final SPIDER_LOADER:Ljava/lang/ClassLoader;

.field public static final enum THUNDER:Lcom/github/catvod/utils/RuntimeModule;


# instance fields
.field public final id:Ljava/lang/String;

.field private final library:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/github/catvod/utils/RuntimeModule;
    .locals 6

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    sget-object v1, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 4
    .line 5
    sget-object v2, Lcom/github/catvod/utils/RuntimeModule;->QUICKJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 6
    .line 7
    sget-object v3, Lcom/github/catvod/utils/RuntimeModule;->THUNDER:Lcom/github/catvod/utils/RuntimeModule;

    .line 8
    .line 9
    sget-object v4, Lcom/github/catvod/utils/RuntimeModule;->MPV:Lcom/github/catvod/utils/RuntimeModule;

    .line 10
    .line 11
    sget-object v5, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/github/catvod/utils/RuntimeModule;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    const-string v4, "Python"

    .line 4
    .line 5
    const-string v5, "libchaquopy_java.so"

    .line 6
    .line 7
    const-string v1, "PYTHON"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "python"

    .line 11
    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 16
    .line 17
    new-instance v1, Lcom/github/catvod/utils/RuntimeModule;

    .line 18
    .line 19
    const-string v5, "Node.js"

    .line 20
    .line 21
    const-string v6, "libnode.so"

    .line 22
    .line 23
    const-string v2, "NODEJS"

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const-string v4, "nodejs"

    .line 27
    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sput-object v1, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 32
    .line 33
    new-instance v2, Lcom/github/catvod/utils/RuntimeModule;

    .line 34
    .line 35
    const-string v6, "QuickJS"

    .line 36
    .line 37
    const-string v7, "libquickjs-wrapper.so"

    .line 38
    .line 39
    const-string v3, "QUICKJS"

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    const-string v5, "quickjs"

    .line 43
    .line 44
    invoke-direct/range {v2 .. v7}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lcom/github/catvod/utils/RuntimeModule;->QUICKJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 48
    .line 49
    new-instance v3, Lcom/github/catvod/utils/RuntimeModule;

    .line 50
    .line 51
    const-string v7, "Thunder"

    .line 52
    .line 53
    const-string v8, "libxl_thunder_sdk.so"

    .line 54
    .line 55
    const-string v4, "THUNDER"

    .line 56
    .line 57
    const/4 v5, 0x3

    .line 58
    const-string v6, "thunder"

    .line 59
    .line 60
    invoke-direct/range {v3 .. v8}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v3, Lcom/github/catvod/utils/RuntimeModule;->THUNDER:Lcom/github/catvod/utils/RuntimeModule;

    .line 64
    .line 65
    new-instance v4, Lcom/github/catvod/utils/RuntimeModule;

    .line 66
    .line 67
    const-string v8, "MPV"

    .line 68
    .line 69
    const-string v9, "libplayer.so"

    .line 70
    .line 71
    const-string v5, "MPV"

    .line 72
    .line 73
    const/4 v6, 0x4

    .line 74
    const-string v7, "mpv"

    .line 75
    .line 76
    invoke-direct/range {v4 .. v9}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v4, Lcom/github/catvod/utils/RuntimeModule;->MPV:Lcom/github/catvod/utils/RuntimeModule;

    .line 80
    .line 81
    new-instance v5, Lcom/github/catvod/utils/RuntimeModule;

    .line 82
    .line 83
    const-string v9, "BD-J"

    .line 84
    .line 85
    const-string v10, ""

    .line 86
    .line 87
    const-string v6, "BDJ"

    .line 88
    .line 89
    const/4 v7, 0x5

    .line 90
    const-string v8, "bdj"

    .line 91
    .line 92
    invoke-direct/range {v5 .. v10}, Lcom/github/catvod/utils/RuntimeModule;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v5, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 96
    .line 97
    invoke-static {}, Lcom/github/catvod/utils/RuntimeModule;->$values()[Lcom/github/catvod/utils/RuntimeModule;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/github/catvod/utils/RuntimeModule;->$VALUES:[Lcom/github/catvod/utils/RuntimeModule;

    .line 102
    .line 103
    new-instance v0, Lcom/github/catvod/utils/RuntimeModule$1;

    .line 104
    .line 105
    const-class v1, Lcom/github/catvod/utils/RuntimeModule;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-direct {v0, v1}, Lcom/github/catvod/utils/RuntimeModule$1;-><init>(Ljava/lang/ClassLoader;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/github/catvod/utils/RuntimeModule;->SPIDER_LOADER:Ljava/lang/ClassLoader;

    .line 115
    .line 116
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->lambda$readAsset$0(Ljava/lang/String;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static assetFile(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x7

    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public static synthetic b(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->lambda$prepare$1(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->lambda$prepare$2(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private cleanAbi(Ljava/io/File;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-direct {p0, p1, v3, p2}, Lcom/github/catvod/utils/RuntimeModule;->cleanGeneration(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private cleanGeneration(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, "/"

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->libraries()[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    array-length p1, p0

    .line 40
    const/4 p3, 0x0

    .line 41
    :goto_0
    if-ge p3, p1, :cond_0

    .line 42
    .line 43
    aget-object v0, p0, p3

    .line 44
    .line 45
    new-instance v1, Ljava/io/File;

    .line 46
    .line 47
    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule;->delete(Ljava/io/File;)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 p3, p3, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule;->delete(Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static copyAsset(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/FileOutputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 p1, 0x2000

    .line 6
    .line 7
    :try_start_0
    new-array p1, p1, [B

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, p1, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_1
    move-exception p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_1
    throw p1
.end method

.method private createEntry(Ljava/lang/Class;Lcom/github/catvod/utils/RuntimeModule$External;)Lcom/github/catvod/runtime/RuntimePlugin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/github/catvod/runtime/RuntimePlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/github/catvod/utils/RuntimeModule$External;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->clean()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->prepare(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->pinAssets(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v2, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, "!/lib/"

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Lcom/github/catvod/utils/RuntimeModule$PluginLoader;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 87
    .line 88
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->optimizedDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-direct {v2, p0, v3, v4, v1}, Lcom/github/catvod/utils/RuntimeModule$PluginLoader;-><init>(Lcom/github/catvod/utils/RuntimeModule;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p2, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const/4 p2, 0x1

    .line 104
    invoke-static {p0, p2, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const/4 v0, 0x0

    .line 113
    if-ne p2, v2, :cond_0

    .line 114
    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    check-cast p0, Lcom/github/catvod/runtime/RuntimePlugin;

    .line 128
    .line 129
    return-object p0

    .line 130
    :cond_0
    const-string p0, "Runtime implementation is bundled in the host"

    .line 131
    .line 132
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-object v0
.end method

.method public static synthetic d(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->lambda$pinAssets$3(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static delete(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_0

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-static {v3}, Lcom/github/catvod/utils/RuntimeModule;->delete(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    const-string p0, "Unable to remove old runtime file"

    .line 32
    .line 33
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private directory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;
    .locals 5

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v3, "runtimes/"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, "/"

    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->versionCode(Landroid/content/pm/PackageInfo;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string p0, "-"

    .line 59
    .line 60
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->C(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static bridge synthetic e(Lcom/github/catvod/utils/RuntimeModule;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getExternalInfo()Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private external()Lcom/github/catvod/utils/RuntimeModule$External;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule$Packages;->states:[Lcom/github/catvod/utils/RuntimeModule$External;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget-object p0, v0, p0

    .line 8
    .line 9
    return-object p0
.end method

.method private extract(Ljava/util/zip/ZipFile;Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)V
    .locals 4

    .line 1
    const-string p0, "Unable to remove runtime staging file"

    .line 2
    .line 3
    invoke-static {p3}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p1, p3}, Lcom/github/catvod/utils/RuntimeModule;->getAssetEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string p0, "Unable to create runtime directory"

    .line 28
    .line 29
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const-string v1, "payload-"

    .line 34
    .line 35
    const-string v2, ".tmp"

    .line 36
    .line 37
    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    .line 45
    .line 46
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/16 v3, 0x100

    .line 51
    .line 52
    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, p3, v1}, Lcom/github/catvod/utils/RuntimeModule;->copyAsset(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/FileOutputStream;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-static {p1, p2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_1

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    :cond_1
    return-void

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_1
    move-exception p2

    .line 98
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    throw p1
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 102
    :catch_0
    move-exception p1

    .line 103
    :try_start_5
    new-instance p2, Ljava/io/IOException;

    .line 104
    .line 105
    const-string p3, "Unable to prepare runtime asset"

    .line 106
    .line 107
    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 111
    :catchall_2
    move-exception p1

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-nez p2, :cond_3

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_3

    .line 123
    .line 124
    :cond_2
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_3
    throw p1
.end method

.method public static bridge synthetic f()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->SPIDER_LOADER:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method public static bridge synthetic g(Ljava/lang/String;)Lcom/github/catvod/utils/RuntimeModule;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->moduleForClass(Ljava/lang/String;)Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static getAssetEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "Runtime asset is missing: "

    .line 9
    .line 10
    invoke-static {p0, p1}, Lz90;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method private getExternalInfo()Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Lcom/github/catvod/utils/RuntimeModule;->signatureFlags()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p0

    .line 22
    :catch_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method private declared-synchronized getInstalledInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->verifyPackage(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    return-object v0

    .line 15
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0
.end method

.method private declared-synchronized getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->metadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 22
    .line 23
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 29
    .line 30
    invoke-direct {p0, v1, v2}, Lcom/github/catvod/utils/RuntimeModule;->readMetadata(Ljava/io/File;Landroid/content/pm/PackageInfo;)Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->metadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    :cond_1
    monitor-exit p0

    .line 37
    return-object v1

    .line 38
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    throw v0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0
.end method

.method public static getSpiderClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->SPIDER_LOADER:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object v0
.end method

.method private static hash(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "SHA-256"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0, p0}, Lcom/github/catvod/utils/RuntimeModule;->updateDigest(Ljava/security/MessageDigest;Ljava/io/InputStream;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->hex([B)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    const-string v0, "Unable to hash runtime library"

    .line 21
    .line 22
    invoke-static {v0, p0}, Lvd0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    shl-int/lit8 v1, v1, 0x1

    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, p0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-byte v3, p0, v2

    .line 14
    .line 15
    and-int/lit16 v4, v3, 0xff

    .line 16
    .line 17
    ushr-int/lit8 v4, v4, 0x4

    .line 18
    .line 19
    const/16 v5, 0x10

    .line 20
    .line 21
    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    and-int/lit8 v3, v3, 0xf

    .line 29
    .line 30
    invoke-static {v3, v5}, Ljava/lang/Character;->forDigit(II)C

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method private static synthetic lambda$pinAssets$3(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "assets/"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic lambda$prepare$1(Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "assets/"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static synthetic lambda$prepare$2(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->assetFile(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static synthetic lambda$readAsset$0(Ljava/lang/String;Lcom/github/catvod/utils/RuntimeModule$Payload;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private libraries()[Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "libnode.so"

    .line 6
    .line 7
    const-string v0, "libnodebridge.so"

    .line 8
    .line 9
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 15
    .line 16
    if-ne p0, v0, :cond_1

    .line 17
    .line 18
    const-string v8, "libpython3.so"

    .line 19
    .line 20
    const-string v9, "libchaquopy_java.so"

    .line 21
    .line 22
    const-string v1, "libcrypto_python.so"

    .line 23
    .line 24
    const-string v2, "libssl_python.so"

    .line 25
    .line 26
    const-string v3, "libsqlite3_python.so"

    .line 27
    .line 28
    const-string v4, "libcrypto_chaquopy.so"

    .line 29
    .line 30
    const-string v5, "libssl_chaquopy.so"

    .line 31
    .line 32
    const-string v6, "libsqlite3_chaquopy.so"

    .line 33
    .line 34
    const-string v7, "libpython3.10.so"

    .line 35
    .line 36
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->THUNDER:Lcom/github/catvod/utils/RuntimeModule;

    .line 42
    .line 43
    if-ne p0, v0, :cond_2

    .line 44
    .line 45
    const-string p0, "libxl_stat.so"

    .line 46
    .line 47
    const-string v0, "libxl_thunder_sdk.so"

    .line 48
    .line 49
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->MPV:Lcom/github/catvod/utils/RuntimeModule;

    .line 55
    .line 56
    if-ne p0, v0, :cond_3

    .line 57
    .line 58
    const-string p0, "libmpv.so"

    .line 59
    .line 60
    const-string v0, "libplayer.so"

    .line 61
    .line 62
    filled-new-array {p0, v0}, [Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_3
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    .line 68
    .line 69
    filled-new-array {p0}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private loadLibraries(Ljava/util/function/Consumer;Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/catvod/utils/RuntimeModule$External;",
            "Lcom/github/catvod/utils/RuntimeModule$Metadata;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->libraries()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v6

    .line 9
    array-length v7, v6

    .line 10
    const/4 v0, 0x0

    .line 11
    move v8, v0

    .line 12
    :goto_0
    if-ge v8, v7, :cond_0

    .line 13
    .line 14
    aget-object v5, v6, v8

    .line 15
    .line 16
    move-object v0, p0

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/github/catvod/utils/RuntimeModule;->loadLibrary(Ljava/util/function/Consumer;Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v8, v8, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private loadLibrary(Ljava/util/function/Consumer;Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/github/catvod/utils/RuntimeModule$External;",
            "Lcom/github/catvod/utils/RuntimeModule$Metadata;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p4, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    invoke-interface {p1, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, p2, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    iput-object v0, p2, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static moduleForClass(Ljava/lang/String;)Lcom/github/catvod/utils/RuntimeModule;
    .locals 1

    .line 1
    const-string v0, "com.fongmi.chaquo."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v0, "com.chaquo.python."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    const-string v0, "com.fongmi.nodejs."

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    sget-object p0, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const-string v0, "com.fongmi.quickjs."

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "com.fongmi.quickjs.host."

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    sget-object p0, Lcom/github/catvod/utils/RuntimeModule;->QUICKJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_1
    const-string v0, "com.xunlei.downloadlib."

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    sget-object p0, Lcom/github/catvod/utils/RuntimeModule;->THUNDER:Lcom/github/catvod/utils/RuntimeModule;

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_2
    const/4 p0, 0x0

    .line 59
    return-object p0

    .line 60
    :cond_3
    sget-object p0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 61
    .line 62
    return-object p0
.end method

.method private nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance p0, Ljava/io/File;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "!/lib/"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method private optimizedDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->directory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v1, 0x1a

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-lt v0, v1, :cond_1

    .line 20
    .line 21
    return-object v2

    .line 22
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 23
    .line 24
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v4, "runtimes/"

    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, "/"

    .line 45
    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->C(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_2

    .line 90
    .line 91
    const-string p0, "Unable to create runtime DEX cache"

    .line 92
    .line 93
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method private parseMetadata(Ljava/util/zip/ZipFile;Landroid/content/pm/PackageInfo;Lorg/json/JSONObject;[B)Lcom/github/catvod/utils/RuntimeModule$Metadata;
    .locals 7

    .line 1
    invoke-static {}, Lcom/github/catvod/utils/PackageAbi;->get()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-direct {p0, p3, p2, v2}, Lcom/github/catvod/utils/RuntimeModule;->verifyMetadata(Lorg/json/JSONObject;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p3, v2}, Lcom/github/catvod/utils/RuntimeModule;->readPayloads(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p0, p3, p2}, Lcom/github/catvod/utils/RuntimeModule;->verifyJavaRuntime(Lorg/json/JSONObject;Landroid/content/pm/PackageInfo;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/github/catvod/utils/RuntimeModule;->MPV:Lcom/github/catvod/utils/RuntimeModule;

    .line 16
    .line 17
    if-ne p0, v1, :cond_0

    .line 18
    .line 19
    const-string v1, "hostLibraries"

    .line 20
    .line 21
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p3}, Lcom/github/catvod/utils/RuntimeModule;->readHostCppSha256(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :goto_0
    move-object v5, p3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 p3, 0x0

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    new-instance p3, Ljava/io/ByteArrayInputStream;

    .line 34
    .line 35
    invoke-direct {p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 36
    .line 37
    .line 38
    invoke-static {p3}, Lcom/github/catvod/utils/RuntimeModule;->hash(Ljava/io/InputStream;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sget-object p3, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 43
    .line 44
    if-ne p0, p3, :cond_1

    .line 45
    .line 46
    invoke-static {p1, v0}, Lcom/github/catvod/utils/RuntimeModule;->verifyPayloadSizes(Ljava/util/zip/ZipFile;Ljava/util/List;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    move-object p0, v0

    .line 50
    new-instance v0, Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 51
    .line 52
    new-instance p1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_2

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/4 v6, 0x0

    .line 87
    move-object v1, p2

    .line 88
    invoke-direct/range {v0 .. v6}, Lcom/github/catvod/utils/RuntimeModule$Metadata;-><init>(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method private pinAssets(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule$External;->assets:Ljava/util/zip/ZipFile;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->D(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/github/catvod/utils/a;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v1, v2}, Lcom/github/catvod/utils/a;-><init>(B)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Ljava/util/zip/ZipFile;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 36
    .line 37
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/github/catvod/utils/RuntimeModule$External;->assets:Ljava/util/zip/ZipFile;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method private prepare(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/github/catvod/utils/RuntimeModule;->directory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->D(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/github/catvod/utils/a;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3}, Lcom/github/catvod/utils/a;-><init>(B)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lj$/util/stream/Stream$-EL;->toList(Ljava/util/stream/Stream;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lcom/github/catvod/utils/b;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v3, v4, v0}, Lcom/github/catvod/utils/b;-><init>(BLjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/github/catvod/utils/RuntimeModule;->assetFile(Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/io/File;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    .line 87
    invoke-direct {p0, v2, v3, v1}, Lcom/github/catvod/utils/RuntimeModule;->extract(Ljava/util/zip/ZipFile;Ljava/io/File;Lcom/github/catvod/utils/RuntimeModule$Payload;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catchall_1
    move-exception p1

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    throw p0
.end method

.method private prepareInstalled()Lcom/github/catvod/utils/RuntimeModule$Metadata;
    .locals 3

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->prepare(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, " module is not installed"

    .line 32
    .line 33
    invoke-static {v0, p0, v2}, Lpl;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    const-string p0, "BD-J preparation belongs to the player"

    .line 42
    .line 43
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method private readAsset(Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "assets/"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "assets://"

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->D(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-interface {p3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    new-instance v0, Lcom/github/catvod/utils/b;

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-direct {v0, v1, p0}, Lcom/github/catvod/utils/b;-><init>(BLjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p3, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_5

    .line 42
    .line 43
    iget-object p3, p1, Lcom/github/catvod/utils/RuntimeModule$External;->assets:Ljava/util/zip/ZipFile;

    .line 44
    .line 45
    if-nez p3, :cond_0

    .line 46
    .line 47
    new-instance p3, Ljava/util/zip/ZipFile;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->F(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 54
    .line 55
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p3, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :try_start_0
    invoke-static {p3, p0}, Lcom/github/catvod/utils/RuntimeModule;->getAssetEntry(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p3, p0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 68
    :try_start_1
    invoke-static {p0}, Lcom/github/catvod/utils/Path;->readOrThrow(Ljava/io/InputStream;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object p0, p1, Lcom/github/catvod/utils/RuntimeModule$External;->assets:Ljava/util/zip/ZipFile;

    .line 78
    .line 79
    if-eq p3, p0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p3}, Ljava/util/zip/ZipFile;->close()V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-object p2

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 97
    :catchall_2
    move-exception p0

    .line 98
    iget-object p1, p1, Lcom/github/catvod/utils/RuntimeModule$External;->assets:Ljava/util/zip/ZipFile;

    .line 99
    .line 100
    if-eq p3, p1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/util/zip/ZipFile;->close()V

    .line 103
    .line 104
    .line 105
    :cond_4
    throw p0

    .line 106
    :cond_5
    const-string p0, "Runtime asset is not declared"

    .line 107
    .line 108
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const/4 p0, 0x0

    .line 112
    return-object p0
.end method

.method private static readBdjContents(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v4, :cond_4

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    invoke-static {v6, v0}, Lcom/github/catvod/utils/RuntimeModule;->verifyBdjPath(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-static {p0, p2}, Lcom/github/catvod/utils/RuntimeModule;->verifyElf(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move v3, v5

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v4, "j2re-image/lib/rt.jar"

    .line 41
    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    const/4 v4, -0x1

    .line 53
    if-ne v2, v4, :cond_2

    .line 54
    .line 55
    move v5, v1

    .line 56
    :cond_2
    move v2, v5

    .line 57
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    if-eqz v2, :cond_5

    .line 62
    .line 63
    if-eqz v3, :cond_5

    .line 64
    .line 65
    return v5

    .line 66
    :cond_5
    return v1
.end method

.method private static readHostCppSha256(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    const-string v0, "libc++_shared.so"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "[0-9a-f]{64}"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_0
    const-string p0, "Invalid MPV host library digest"

    .line 31
    .line 32
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    :cond_1
    const-string p0, "Invalid MPV host libraries"

    .line 37
    .line 38
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method private readMetadata(Ljava/io/File;Landroid/content/pm/PackageInfo;)Lcom/github/catvod/utils/RuntimeModule$Metadata;
    .locals 6

    .line 1
    const-string v0, "Invalid runtime metadata"

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/github/catvod/utils/RuntimeModule;->verifyPackage(Landroid/content/pm/PackageInfo;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    const-string p1, "assets/runtime.json"

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    const-wide/32 v4, 0x10000

    .line 34
    .line 35
    .line 36
    cmp-long v2, v2, v4

    .line 37
    .line 38
    if-gtz v2, :cond_0

    .line 39
    .line 40
    new-instance v2, Ljava/io/DataInputStream;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-direct {p0, v2, v3, v4}, Lcom/github/catvod/utils/RuntimeModule;->readMetadataBytes(Ljava/io/DataInputStream;J)[B

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v3, Lorg/json/JSONObject;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/String;

    .line 60
    .line 61
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 62
    .line 63
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, v1, p2, v3, p1}, Lcom/github/catvod/utils/RuntimeModule;->parseMetadata(Ljava/util/zip/ZipFile;Landroid/content/pm/PackageInfo;Lorg/json/JSONObject;[B)Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 73
    .line 74
    .line 75
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    .line 78
    .line 79
    return-object p0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    throw p0

    .line 90
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 96
    :catchall_2
    move-exception p0

    .line 97
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_3
    move-exception p1

    .line 102
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    throw p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-static {v0, p0}, Lvd0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x0

    .line 111
    return-object p0
.end method

.method private readMetadataBytes(Ljava/io/DataInputStream;J)[B
    .locals 0

    .line 1
    long-to-int p0, p2

    .line 2
    new-array p0, p0, [B

    .line 3
    .line 4
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method private readPayloads(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/catvod/utils/RuntimeModule$Payload;",
            ">;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v4, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 13
    .line 14
    sget-object v5, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 15
    .line 16
    const-string v10, "library"

    .line 17
    .line 18
    if-ne v0, v5, :cond_0

    .line 19
    .line 20
    const-string v5, "archive"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v5, v10

    .line 24
    :goto_0
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-string v11, "sha256"

    .line 29
    .line 30
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    const-string v12, "size"

    .line 35
    .line 36
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    const/4 v6, 0x0

    .line 41
    invoke-direct/range {v4 .. v9}, Lcom/github/catvod/utils/RuntimeModule$Payload;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v5, "files"

    .line 45
    .line 46
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const/4 v6, 0x0

    .line 51
    if-eqz v5, :cond_5

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    if-ge v7, v8, :cond_1

    .line 59
    .line 60
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    new-instance v13, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 65
    .line 66
    const-string v9, "path"

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v18

    .line 76
    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v16

    .line 80
    const/4 v15, 0x0

    .line 81
    invoke-direct/range {v13 .. v18}, Lcom/github/catvod/utils/RuntimeModule$Payload;-><init>(Ljava/lang/String;IJLjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_4

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/16 v7, 0x100

    .line 101
    .line 102
    if-gt v5, v7, :cond_4

    .line 103
    .line 104
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_4

    .line 109
    .line 110
    sget-object v5, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 111
    .line 112
    if-ne v0, v5, :cond_3

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    const/4 v7, 0x1

    .line 119
    if-ne v5, v7, :cond_2

    .line 120
    .line 121
    const-string v5, "assets/bdj/runtime.zip"

    .line 122
    .line 123
    invoke-static {v4}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    :cond_2
    const-string v0, "Invalid BD-J archive metadata"

    .line 140
    .line 141
    invoke-static {v0}, Lrp0;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return-object v6

    .line 145
    :cond_3
    invoke-direct {v0, v3, v2}, Lcom/github/catvod/utils/RuntimeModule;->verifyPayloadMetadata(Ljava/util/List;Ljava/lang/String;)Ljava/util/HashSet;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v0, v1, v2}, Lcom/github/catvod/utils/RuntimeModule;->verifyRequiredPayloads(Ljava/util/HashSet;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    return-object v3

    .line 153
    :cond_4
    const-string v0, "Invalid runtime payload list"

    .line 154
    .line 155
    invoke-static {v0}, Lrp0;->h(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v6

    .line 159
    :cond_5
    const-string v0, "Runtime payload list is missing"

    .line 160
    .line 161
    invoke-static {v0}, Lrp0;->h(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-object v6
.end method

.method public static refresh()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/github/catvod/utils/RuntimeModule;->values()[Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/github/catvod/utils/RuntimeModule;->refreshPackage()V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method private declared-synchronized refreshPackage()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getExternalInfo()Landroid/content/pm/PackageInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 17
    .line 18
    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 19
    .line 20
    cmp-long v3, v3, v5

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :cond_0
    :try_start_1
    iput-object v0, v1, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, v1, Lcom/github/catvod/utils/RuntimeModule$External;->metadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_0
.end method

.method private static signatureFlags()I
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x8000000

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    const/16 v0, 0x40

    .line 11
    .line 12
    return v0
.end method

.method private static signatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    invoke-static {p0}, Lkd;->a(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 21
    .line 22
    return-object p0
.end method

.method private static updateDigest(Ljava/security/MessageDigest;Ljava/io/InputStream;)V
    .locals 3

    .line 1
    const/16 v0, 0x2000

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/catvod/utils/RuntimeModule;
    .locals 1

    .line 1
    const-class v0, Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/github/catvod/utils/RuntimeModule;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/github/catvod/utils/RuntimeModule;
    .locals 1

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->$VALUES:[Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/github/catvod/utils/RuntimeModule;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/github/catvod/utils/RuntimeModule;

    .line 8
    .line 9
    return-object v0
.end method

.method private static verifyBdjArchive(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "j2re-image/lib/"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "arm64-v8a"

    .line 9
    .line 10
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "aarch64"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "arm"

    .line 20
    .line 21
    :goto_0
    const-string v2, "/server/libjvm.so"

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lpl;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v1, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    .line 35
    .line 36
    :try_start_0
    invoke-static {v1, v0, p2}, Lcom/github/catvod/utils/RuntimeModule;->readBdjContents(Ljava/util/zip/ZipInputStream;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    .line 41
    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string p0, "Incomplete BD-J archive"

    .line 47
    .line 48
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    throw p0
.end method

.method private static verifyBdjPath(Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "j2re-image/"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ".."

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "\\"

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    const-string v0, "//"

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    const-string p0, "Invalid BD-J archive path"

    .line 41
    .line 42
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static verifyDex(Ljava/util/zip/ZipFile;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 21
    .line 22
    invoke-static {p0, v2, v0}, Lcom/github/catvod/utils/RuntimeModule;->verifyDexEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/HashSet;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "classes.dex"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    const-string p0, "Java runtime DEX is missing"

    .line 36
    .line 37
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static verifyDexEntry(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ".dex"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "classes(?:[2-9]|1[0-6])?\\.dex"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-eqz p2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    const-wide/16 v2, 0x70

    .line 33
    .line 34
    cmp-long p2, v0, v2

    .line 35
    .line 36
    if-ltz p2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/32 v2, 0x4000000

    .line 43
    .line 44
    .line 45
    cmp-long p2, v0, v2

    .line 46
    .line 47
    if-gtz p2, :cond_2

    .line 48
    .line 49
    new-instance p2, Ljava/io/DataInputStream;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    .line 57
    .line 58
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    .line 59
    .line 60
    .line 61
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    const p1, 0x6465780a

    .line 63
    .line 64
    .line 65
    if-ne p0, p1, :cond_1

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    .line 72
    .line 73
    const-string p1, "Invalid runtime DEX header"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    throw p0

    .line 89
    :cond_2
    const-string p0, "Invalid runtime DEX"

    .line 90
    .line 91
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static verifyElf(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x14

    .line 77
    new-array v0, v0, [B

    .line 78
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 79
    invoke-static {v0, p1}, Lcom/github/catvod/utils/RuntimeModule;->verifyElf([BLjava/lang/String;)V

    return-void
.end method

.method private static verifyElf([BLjava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "arm64-v8a"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0xb7

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    move p1, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 p1, 0x28

    .line 14
    .line 15
    :goto_0
    const/4 v1, 0x0

    .line 16
    aget-byte v1, p0, v1

    .line 17
    .line 18
    const/16 v2, 0x7f

    .line 19
    .line 20
    if-ne v1, v2, :cond_2

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    aget-byte v2, p0, v1

    .line 24
    .line 25
    const/16 v3, 0x45

    .line 26
    .line 27
    if-ne v2, v3, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    aget-byte v3, p0, v2

    .line 31
    .line 32
    const/16 v4, 0x4c

    .line 33
    .line 34
    if-ne v3, v4, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    aget-byte v3, p0, v3

    .line 38
    .line 39
    const/16 v4, 0x46

    .line 40
    .line 41
    if-ne v3, v4, :cond_2

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    aget-byte v3, p0, v3

    .line 45
    .line 46
    if-eq p1, v0, :cond_1

    .line 47
    .line 48
    move v2, v1

    .line 49
    :cond_1
    if-ne v3, v2, :cond_2

    .line 50
    .line 51
    const/4 v0, 0x5

    .line 52
    aget-byte v0, p0, v0

    .line 53
    .line 54
    if-ne v0, v1, :cond_2

    .line 55
    .line 56
    const/16 v0, 0x12

    .line 57
    .line 58
    aget-byte v0, p0, v0

    .line 59
    .line 60
    and-int/lit16 v0, v0, 0xff

    .line 61
    .line 62
    if-ne v0, p1, :cond_2

    .line 63
    .line 64
    const/16 p1, 0x13

    .line 65
    .line 66
    aget-byte p0, p0, p1

    .line 67
    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    const-string p0, "Invalid runtime ELF ABI"

    .line 72
    .line 73
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private static verifyHostLibrary(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    .locals 3

    .line 1
    const-string v0, "lib/"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->E(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 11
    .line 12
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "/libc++_shared.so"

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 53
    .line 54
    .line 55
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 56
    :try_start_1
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->E(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-static {v0}, Lcom/github/catvod/utils/RuntimeModule;->hash(Ljava/io/InputStream;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-eqz p0, :cond_2

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 80
    .line 81
    const-string v2, "Incompatible MPV host library libc++_shared.so"

    .line 82
    .line 83
    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    throw p0

    .line 99
    :cond_4
    new-instance p0, Ljava/io/IOException;

    .line 100
    .line 101
    const-string v0, "MPV requires host library libc++_shared.so"

    .line 102
    .line 103
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    :catchall_2
    move-exception p0

    .line 108
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catchall_3
    move-exception v0

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    throw p0
.end method

.method private verifyJavaRuntime(Lorg/json/JSONObject;Landroid/content/pm/PackageInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "entryClass"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string v0, "javaApi"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 47
    .line 48
    and-int/lit8 p0, p0, 0x4

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    :cond_0
    const-string p0, "Incompatible Java runtime"

    .line 53
    .line 54
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private verifyMetadata(Lorg/json/JSONObject;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "module"

    .line 4
    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "packageName"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule;->versionCode(Landroid/content/pm/PackageInfo;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const-string v2, "versionCode"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    cmp-long v0, v0, v2

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const-string v0, "versionName"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getCompatibilityId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    const-string v0, "compatibilityId"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    const-string p2, "abi"

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    const-string v0, "Incompatible runtime ABI"

    .line 86
    .line 87
    if-eqz p2, :cond_1

    .line 88
    .line 89
    sget-object p2, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 90
    .line 91
    if-eq p0, p2, :cond_0

    .line 92
    .line 93
    const-string p2, "lib/"

    .line 94
    .line 95
    const-string v1, "/"

    .line 96
    .line 97
    invoke-static {p2, p3, v1}, Lpl;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    const-string p2, "library"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-nez p0, :cond_0

    .line 121
    .line 122
    invoke-static {v0}, Lrp0;->h(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-static {v0}, Lrp0;->h(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_2
    const-string p0, "Incompatible runtime metadata"

    .line 131
    .line 132
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private verifyPackage(Landroid/content/pm/PackageInfo;)V
    .locals 4

    return-void


    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule;->versionCode(Landroid/content/pm/PackageInfo;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v0, v0, v2

    .line 14
    .line 15
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 38
    .line 39
    iget-object p0, p1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    array-length p0, p0

    .line 44
    if-nez p0, :cond_2

    .line 45
    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {}, Lcom/github/catvod/utils/RuntimeModule;->signatureFlags()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->signatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule;->signatures(Landroid/content/pm/PackageInfo;)[Landroid/content/pm/Signature;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-eqz p0, :cond_1

    .line 79
    .line 80
    if-eqz p1, :cond_1

    .line 81
    .line 82
    array-length v0, p0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    array-length v0, p0

    .line 86
    array-length v1, p1

    .line 87
    if-ne v0, v1, :cond_1

    .line 88
    .line 89
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_1

    .line 102
    .line 103
    return-void

    .line 104
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 105
    .line 106
    const-string p1, "Invalid runtime signer"

    .line 107
    .line 108
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :catch_0
    move-exception p0

    .line 113
    const-string p1, "Unable to verify runtime signer"

    .line 114
    .line 115
    invoke-static {p1, p0}, Lvd0;->m(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_2
    const-string p0, "Invalid runtime package"

    .line 120
    .line 121
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private static verifyPayload(Ljava/util/zip/ZipFile;Ljava/lang/String;Lcom/github/catvod/utils/RuntimeModule$Payload;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Payload;->D(Lcom/github/catvod/utils/RuntimeModule$Payload;)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    cmp-long v1, v1, v3

    .line 20
    .line 21
    if-nez v1, :cond_5

    .line 22
    .line 23
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, ".so"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Ljava/io/DataInputStream;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {v1, p1}, Lcom/github/catvod/utils/RuntimeModule;->verifyElf(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_1
    move-exception p1

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    throw p0

    .line 61
    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :try_start_2
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Payload;->C(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule;->hash(Ljava/io/InputStream;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    if-eqz v2, :cond_3

    .line 78
    .line 79
    if-eqz v1, :cond_1

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 82
    .line 83
    .line 84
    :cond_1
    const-string v1, "assets/bdj/runtime.zip"

    .line 85
    .line 86
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    invoke-static {p0, v0, p1}, Lcom/github/catvod/utils/RuntimeModule;->verifyBdjArchive(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void

    .line 100
    :cond_3
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    .line 101
    .line 102
    const-string p1, "Invalid runtime payload digest"

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_3
    move-exception p1

    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_2
    throw p0

    .line 120
    :cond_5
    const-string p0, "Invalid runtime payload size"

    .line 121
    .line 122
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private verifyPayloadMetadata(Ljava/util/List;Ljava/lang/String;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/catvod/utils/RuntimeModule$Payload;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->C(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "[0-9a-f]{64}"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->D(Lcom/github/catvod/utils/RuntimeModule$Payload;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    cmp-long v2, v2, v4

    .line 51
    .line 52
    if-lez v2, :cond_0

    .line 53
    .line 54
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->D(Lcom/github/catvod/utils/RuntimeModule$Payload;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    const-wide/32 v4, 0x8000000

    .line 59
    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-gtz v2, :cond_0

    .line 64
    .line 65
    invoke-direct {p0, v1, p2}, Lcom/github/catvod/utils/RuntimeModule;->verifyPayloadPath(Lcom/github/catvod/utils/RuntimeModule$Payload;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const-string p0, "Invalid runtime payload metadata"

    .line 70
    .line 71
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return-object p0

    .line 76
    :cond_1
    return-object v0
.end method

.method private verifyPayloadPath(Lcom/github/catvod/utils/RuntimeModule$Payload;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "lib/"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v2, "/"

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-static {v1, p2, v2}, Lpl;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->libraries()[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-nez p0, :cond_6

    .line 54
    .line 55
    :cond_0
    const-string p0, "Invalid runtime library path"

    .line 56
    .line 57
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    sget-object p2, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 62
    .line 63
    if-ne p0, p2, :cond_2

    .line 64
    .line 65
    const-string p0, "assets/bdj/runtime.zip"

    .line 66
    .line 67
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_6

    .line 76
    .line 77
    const-string p0, "Invalid BD-J archive path"

    .line 78
    .line 79
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    if-eqz p0, :cond_5

    .line 88
    .line 89
    const/4 p2, 0x1

    .line 90
    if-eq p0, p2, :cond_4

    .line 91
    .line 92
    const/4 p2, 0x2

    .line 93
    if-eq p0, p2, :cond_3

    .line 94
    .line 95
    const-string p0, ""

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    const-string p0, "assets/js/"

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    const-string p0, "assets/nodejs/"

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const-string p0, "assets/chaquopy/"

    .line 105
    .line 106
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_7

    .line 111
    .line 112
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p0

    .line 120
    if-eqz p0, :cond_7

    .line 121
    .line 122
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string p2, ".."

    .line 127
    .line 128
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    if-nez p0, :cond_7

    .line 133
    .line 134
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    const-string p2, "\\"

    .line 139
    .line 140
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result p0

    .line 144
    if-nez p0, :cond_7

    .line 145
    .line 146
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string p2, "//"

    .line 151
    .line 152
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    if-nez p0, :cond_7

    .line 157
    .line 158
    invoke-static {p1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result p0

    .line 166
    if-nez p0, :cond_7

    .line 167
    .line 168
    :cond_6
    return-void

    .line 169
    :cond_7
    const-string p0, "Invalid runtime asset path"

    .line 170
    .line 171
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method private static verifyPayloadSizes(Ljava/util/zip/ZipFile;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/List<",
            "Lcom/github/catvod/utils/RuntimeModule$Payload;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-static {v0}, Lcom/github/catvod/utils/RuntimeModule$Payload;->D(Lcom/github/catvod/utils/RuntimeModule$Payload;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    cmp-long v0, v1, v3

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :cond_1
    const-string p0, "Invalid runtime payload size"

    .line 40
    .line 41
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method private verifyPayloads(Ljava/util/zip/ZipFile;Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->D(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/github/catvod/utils/RuntimeModule$Payload;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Payload;->B(Lcom/github/catvod/utils/RuntimeModule$Payload;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "lib/"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 55
    .line 56
    const-string p2, " libraries must be stored uncompressed"

    .line 57
    .line 58
    invoke-static {p1, p0, p2}, Lpl;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-static {p2}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {p1, v2, v1}, Lcom/github/catvod/utils/RuntimeModule;->verifyPayload(Ljava/util/zip/ZipFile;Ljava/lang/String;Lcom/github/catvod/utils/RuntimeModule$Payload;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    return-void
.end method

.method private verifyRequiredPayloads(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->libraries()[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v2, v0

    .line 11
    move v3, v1

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    new-instance v5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v6, "lib/"

    .line 19
    .line 20
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v6, "/"

    .line 27
    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-string p0, "Runtime library is missing"

    .line 48
    .line 49
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne p0, v0, :cond_4

    .line 57
    .line 58
    const-string v0, "stdlib-"

    .line 59
    .line 60
    const-string v3, ".imy"

    .line 61
    .line 62
    invoke-static {v0, p2, v3}, Lpl;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    const-string v0, "requirements-"

    .line 67
    .line 68
    invoke-static {v0, p2, v3}, Lpl;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const-string v4, "app.imy"

    .line 73
    .line 74
    const-string v5, "build.json"

    .line 75
    .line 76
    const-string v6, "bootstrap.imy"

    .line 77
    .line 78
    const-string v7, "stdlib-common.imy"

    .line 79
    .line 80
    const-string v9, "requirements-common.imy"

    .line 81
    .line 82
    const-string v11, "cacert.pem"

    .line 83
    .line 84
    filled-new-array/range {v4 .. v11}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    .line 92
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .line 94
    .line 95
    move v4, v1

    .line 96
    :goto_1
    if-ge v4, v3, :cond_2

    .line 97
    .line 98
    aget-object v5, p2, v4

    .line 99
    .line 100
    invoke-static {v5, v0, v5, v4, v2}, Lkx1;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v4, "assets/chaquopy/"

    .line 128
    .line 129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_3

    .line 144
    .line 145
    const-string p0, "Python asset is missing: "

    .line 146
    .line 147
    invoke-static {p0, v0}, Lz90;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_4
    sget-object p2, Lcom/github/catvod/utils/RuntimeModule;->QUICKJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 156
    .line 157
    if-ne p0, p2, :cond_7

    .line 158
    .line 159
    const-string p2, "net.js"

    .line 160
    .line 161
    const-string v0, "spider.js"

    .line 162
    .line 163
    filled-new-array {p2, v0}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    const/4 v3, 0x2

    .line 170
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .line 172
    .line 173
    :goto_2
    if-ge v1, v3, :cond_5

    .line 174
    .line 175
    aget-object v4, p2, v1

    .line 176
    .line 177
    invoke-static {v4, v0, v4, v1, v2}, Lkx1;->k(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;II)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    goto :goto_2

    .line 182
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_7

    .line 195
    .line 196
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Ljava/lang/String;

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v2, "assets/js/lib/"

    .line 205
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-nez v1, :cond_6

    .line 221
    .line 222
    const-string p0, "QuickJS asset is missing: "

    .line 223
    .line 224
    invoke-static {p0, v0}, Lz90;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :cond_7
    sget-object p2, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 233
    .line 234
    if-ne p0, p2, :cond_8

    .line 235
    .line 236
    const-string p0, "assets/nodejs/bootstrap.js"

    .line 237
    .line 238
    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result p0

    .line 242
    if-nez p0, :cond_8

    .line 243
    .line 244
    const-string p0, "Node.js bootstrap is missing"

    .line 245
    .line 246
    invoke-static {p0}, Lrp0;->h(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_8
    return-void
.end method

.method private static versionCode(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 13
    .line 14
    int-to-long v0, p0

    .line 15
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 5

    .line 1
    const-string v0, "runtimes/"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-ne p0, v1, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 15
    .line 16
    if-nez v2, :cond_4

    .line 17
    .line 18
    iget-object v1, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 19
    .line 20
    if-nez v1, :cond_4

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    sget-object v2, Lcom/github/catvod/utils/RuntimeModule;->PYTHON:Lcom/github/catvod/utils/RuntimeModule;

    .line 27
    .line 28
    if-ne p0, v2, :cond_1

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->B(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, "/"

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, v1}, Lcom/github/catvod/utils/RuntimeModule;->directory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 v1, 0x0

    .line 66
    :goto_0
    new-instance v2, Ljava/io/File;

    .line 67
    .line 68
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 101
    :cond_2
    :try_start_2
    array-length v2, v0

    .line 102
    const/4 v3, 0x0

    .line 103
    :goto_1
    if-ge v3, v2, :cond_3

    .line 104
    .line 105
    aget-object v4, v0, v3

    .line 106
    .line 107
    invoke-direct {p0, v4, v1}, Lcom/github/catvod/utils/RuntimeModule;->cleanAbi(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .line 109
    .line 110
    add-int/lit8 v3, v3, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :cond_4
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    throw v0

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_2
.end method

.method public declared-synchronized entry(Ljava/lang/Class;)Lcom/github/catvod/runtime/RuntimePlugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/github/catvod/runtime/RuntimePlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "Unable to load "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->require()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->entryFailure:Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    :try_start_1
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->entry:Lcom/github/catvod/runtime/RuntimePlugin;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, p1, v1}, Lcom/github/catvod/utils/RuntimeModule;->createEntry(Ljava/lang/Class;Lcom/github/catvod/utils/RuntimeModule$External;)Lcom/github/catvod/runtime/RuntimePlugin;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iput-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->entry:Lcom/github/catvod/runtime/RuntimePlugin;

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/github/catvod/runtime/RuntimePlugin;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-object p1

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception p1

    .line 46
    goto :goto_0

    .line 47
    :catch_2
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_3
    move-exception p1

    .line 50
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " Java runtime; restart the app"

    .line 63
    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->entryFailure:Ljava/lang/RuntimeException;

    .line 75
    .line 76
    throw v2

    .line 77
    :cond_1
    throw v2

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    const-string v0, "Runtime does not provide a Java plugin"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    throw p1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1
.end method

.method public getCompatibilityId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_5

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_4

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p0, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-ne p0, v0, :cond_0

    .line 21
    .line 22
    const-string p0, "libbluray-1.4.1-openjdk8-zero-v1"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p0

    .line 32
    :cond_1
    const-string p0, "mpv-jni-ffmpeg-shared-v1"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    const-string p0, "catvod-thunder-plugin-v1"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_3
    const-string p0, "fongmi-quickjs-ng-0.17-v13"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_4
    const-string p0, "catvod-nodejs-plugin-v3"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_5
    const-string p0, "catvod-python-plugin-v4"

    .line 45
    .line 46
    return-object p0
.end method

.method public declared-synchronized getDirectory()Ljava/io/File;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->prepareInstalled()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->directory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0
.end method

.method public getEntryClass()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-eq p0, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p0, v0, :cond_0

    .line 15
    .line 16
    const-string p0, ""

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "com.xunlei.downloadlib.RuntimeEntry"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "com.fongmi.quickjs.RuntimeEntry"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "com.fongmi.nodejs.RuntimeEntry"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "com.fongmi.chaquo.RuntimeEntry"

    .line 29
    .line 30
    return-object p0
.end method

.method public declared-synchronized getLoadedFile()Ljava/io/File;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "com.fongmi.runtime."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule;->id:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getVersionCode()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getInstalledInfo()Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-static {p0}, Lcom/github/catvod/utils/RuntimeModule;->versionCode(Landroid/content/pm/PackageInfo;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getInstalledInfo()Landroid/content/pm/PackageInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public isExternal()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public isInstalled()Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/github/catvod/utils/RuntimeModule$External;->info:Landroid/content/pm/PackageInfo;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public declared-synchronized isRestartRequired()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadFailure:Ljava/lang/LinkageError;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_4

    .line 10
    .line 11
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->entryFailure:Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    iget-object v3, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-static {v3}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->C(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule$Metadata;->C(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    :cond_1
    iget-object v3, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    iget-object v0, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0, v3}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :goto_0
    invoke-direct {p0, v1}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    xor-int/2addr v0, v2

    .line 74
    monitor-exit p0

    .line 75
    return v0

    .line 76
    :cond_3
    monitor-exit p0

    .line 77
    return v2

    .line 78
    :cond_4
    monitor-exit p0

    .line 79
    return v2

    .line 80
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    throw v0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_1
.end method

.method public declared-synchronized load()V
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ldz0;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ldz0;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/github/catvod/utils/RuntimeModule;->load(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Java runtime must load its own native libraries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized load(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "Unable to load "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v1, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    .line 5
    .line 6
    if-eq p0, v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->require()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loadFailure:Ljava/lang/LinkageError;

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    iget-boolean v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->complete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :cond_1
    invoke-static {v2}, Lcom/github/catvod/utils/RuntimeModule;->verifyHostLibrary(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/github/catvod/utils/RuntimeModule;->prepare(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, v2}, Lcom/github/catvod/utils/RuntimeModule;->pinAssets(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1, v1, v2}, Lcom/github/catvod/utils/RuntimeModule;->loadLibraries(Ljava/util/function/Consumer;Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, v1, Lcom/github/catvod/utils/RuntimeModule$External;->complete:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    monitor-exit p0

    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    :try_start_2
    iput-object p1, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loadFailure:Ljava/lang/LinkageError;

    .line 52
    .line 53
    throw p1

    .line 54
    :catch_1
    move-exception p1

    .line 55
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    throw v1

    .line 75
    :cond_2
    throw v2

    .line 76
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 77
    .line 78
    const-string v0, "BD-J loading belongs to the player"

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_0
.end method

.method public declared-synchronized prepare()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 105
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->prepareInstalled()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "Unable to read "

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->require()V

    .line 114
    sget-object v1, Lcom/github/catvod/utils/RuntimeModule;->BDJ:Lcom/github/catvod/utils/RuntimeModule;

    if-eq p0, v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    move-result-object v1

    .line 116
    iget-object v2, v1, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    move-result-object v2

    .line 117
    :cond_0
    invoke-direct {p0, v1, v2, p1}, Lcom/github/catvod/utils/RuntimeModule;->readAsset(Lcom/github/catvod/utils/RuntimeModule$External;Lcom/github/catvod/utils/RuntimeModule$Metadata;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 118
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "BD-J preparation belongs to the player"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception p1

    .line 119
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " runtime asset"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0
.end method

.method public declared-synchronized recordLoaded(Ljava/io/File;Ljava/lang/Object;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 3
    .line 4
    if-ne p0, v0, :cond_3

    .line 5
    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->require()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedMetadata:Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :cond_0
    new-instance v2, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/github/catvod/utils/RuntimeModule;->nativeDirectory(Lcom/github/catvod/utils/RuntimeModule$Metadata;)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lcom/github/catvod/utils/RuntimeModule;->library:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iput-object p1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 41
    .line 42
    iput-object p2, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 47
    .line 48
    const-string p2, "Invalid loaded runtime file"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    new-instance p1, Ljava/io/IOException;

    .line 55
    .line 56
    const-string p2, "Invalid runtime owner"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/io/IOException;

    .line 63
    .line 64
    const-string p2, "Runtime does not run in a separate process"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw p1

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    goto :goto_0
.end method

.method public declared-synchronized recordStopped(Ljava/lang/Object;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/github/catvod/utils/RuntimeModule;->NODEJS:Lcom/github/catvod/utils/RuntimeModule;

    .line 3
    .line 4
    if-ne p0, v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->external()Lcom/github/catvod/utils/RuntimeModule$External;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedOwner:Ljava/lang/Object;

    .line 13
    .line 14
    if-ne v1, p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loaded:Ljava/io/File;

    .line 18
    .line 19
    iput-object p1, v0, Lcom/github/catvod/utils/RuntimeModule$External;->loadedOwner:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "Runtime does not run in a separate process"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_0
.end method

.method public declared-synchronized require()V
    .locals 4

    .line 1
    const-string v0, "Invalid "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->isInstalled()Z

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    :try_start_1
    invoke-direct {p0}, Lcom/github/catvod/utils/RuntimeModule;->getMetadata()Lcom/github/catvod/utils/RuntimeModule$Metadata;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catch_0
    move-exception v1

    .line 16
    :try_start_2
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/github/catvod/utils/RuntimeModule;->title:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " module"

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v2

    .line 41
    :cond_0
    new-instance v0, Lcom/github/catvod/utils/RuntimeModule$MissingException;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lcom/github/catvod/utils/RuntimeModule$MissingException;-><init>(Lcom/github/catvod/utils/RuntimeModule;)V

    .line 44
    .line 45
    .line 46
    throw v0

    .line 47
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    throw v0

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    goto :goto_0
.end method

.method public validate(Ljava/io/File;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    invoke-static {}, Lcom/github/catvod/Runtime;->context()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/github/catvod/utils/RuntimeModule;->signatureFlags()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    or-int/lit8 v2, v2, 0x40

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/github/catvod/utils/RuntimeModule;->readMetadata(Ljava/io/File;Landroid/content/pm/PackageInfo;)Lcom/github/catvod/utils/RuntimeModule$Metadata;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/github/catvod/utils/RuntimeModule;->verifyHostLibrary(Lcom/github/catvod/utils/RuntimeModule$Metadata;)V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/util/zip/ZipFile;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lcom/github/catvod/utils/RuntimeModule;->getEntryClass()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    invoke-static {v2}, Lcom/github/catvod/utils/RuntimeModule;->verifyDex(Ljava/util/zip/ZipFile;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/github/catvod/utils/RuntimeModule;->verifyPayloads(Ljava/util/zip/ZipFile;Lcom/github/catvod/utils/RuntimeModule$Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 52
    .line 53
    .line 54
    return-object v0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    throw p0
.end method
