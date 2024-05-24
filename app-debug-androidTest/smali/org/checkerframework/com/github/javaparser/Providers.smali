.class public final Lorg/checkerframework/com/github/javaparser/Providers;
.super Ljava/lang/Object;
.source "Providers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/Providers$PreProcessor;
    }
.end annotation


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "utf-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static provider(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static provider(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static provider(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "encoding"
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :try_start_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/StreamProvider;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/StreamProvider;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static provider(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/checkerframework/com/github/javaparser/StreamProvider;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/StreamProvider;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static provider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/checkerframework/com/github/javaparser/StringProvider;

    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/StringProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static provider(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "pathToResource"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classLoader",
            "pathToResource",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 88
    .local v0, "resourceAsStream":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0, p2}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resourceProvider(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 1
    .param p0, "pathToResource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathToResource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static resourceProvider(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;
    .locals 2
    .param p0, "pathToResource"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathToResource",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    const-class v0, Lorg/checkerframework/com/github/javaparser/Provider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 100
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/Providers;->resourceProvider(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    return-object v1
.end method
