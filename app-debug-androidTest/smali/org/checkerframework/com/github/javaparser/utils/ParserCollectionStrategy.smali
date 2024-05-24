.class public Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;
.super Ljava/lang/Object;
.source "ParserCollectionStrategy.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/utils/CollectionStrategy;


# instance fields
.field private final parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0
    .param p1, "parserConfiguration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserConfiguration"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 29
    return-void
.end method

.method static synthetic lambda$collect$0(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    .line 68
    return-object p0
.end method


# virtual methods
.method public collect(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;
    .locals 5
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 35
    .local v0, "projectRoot":Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;
    :try_start_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy;Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;)V

    invoke-static {p1, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/function/Supplier;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lorg/checkerframework/com/github/javaparser/utils/ParserCollectionStrategy$$ExternalSyntheticLambda0;-><init>(Ljava/nio/file/Path;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Unable to walk %s"

    invoke-static {v1, v3, v2}, Lorg/checkerframework/com/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 70
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method
