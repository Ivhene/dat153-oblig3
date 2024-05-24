.class Lorg/mockito/internal/configuration/plugins/PluginFileReader;
.super Ljava/lang/Object;
.source "PluginFileReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static stripCommentAndWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .line 24
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 25
    .local v0, "hash":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 26
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method readPluginClass(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;

    .line 14
    invoke-static {p1}, Lorg/mockito/internal/util/io/IOUtil;->readLines(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    .local v1, "line":Ljava/lang/String;
    invoke-static {v1}, Lorg/mockito/internal/configuration/plugins/PluginFileReader;->stripCommentAndWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "stripped":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 17
    return-object v2

    .line 19
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "stripped":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
