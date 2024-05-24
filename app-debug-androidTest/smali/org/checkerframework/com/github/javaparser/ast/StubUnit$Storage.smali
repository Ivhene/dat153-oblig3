.class public Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;
.super Ljava/lang/Object;
.source "StubUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# instance fields
.field private final path:Ljava/nio/file/Path;

.field private final stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "stubUnit"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stubUnit",
            "path"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    .line 116
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    .line 117
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/StubUnit$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "x1"    # Ljava/nio/file/Path;
    .param p3, "x2"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit$1;

    .line 100
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;-><init>(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/nio/file/Path;)V

    return-void
.end method

.method static synthetic lambda$save$0(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;)Ljava/lang/String;
    .locals 1
    .param p0, "stubUnit"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "stubUnit"
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>()V

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;->print(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDirectory()Ljava/nio/file/Path;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/nio/file/Path;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getStubUnit()Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->stubUnit:Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public reparse(Lorg/checkerframework/com/github/javaparser/JavaParser;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 2
    .param p1, "javaParser"    # Lorg/checkerframework/com/github/javaparser/JavaParser;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javaParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/JavaParser;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            ">;"
        }
    .end annotation

    .line 162
    :try_start_0
    sget-object v0, Lorg/checkerframework/com/github/javaparser/ParseStart;->STUB_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public save()V
    .locals 1

    .line 141
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->save(Ljava/util/function/Function;)V

    .line 142
    return-void
.end method

.method public save(Ljava/util/function/Function;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "makeOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 152
    .local p1, "makeOutput":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 153
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->getStubUnit()Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, "code":Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit$Storage;->path:Ljava/nio/file/Path;

    sget-object v3, Lorg/checkerframework/com/github/javaparser/Providers;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3, v1}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    nop

    .line 158
    .end local v0    # "code":Ljava/lang/String;
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
