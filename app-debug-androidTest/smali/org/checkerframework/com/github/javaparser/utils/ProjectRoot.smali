.class public Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;
.super Ljava/lang/Object;
.source "ProjectRoot.java"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;",
            ">;"
        }
    .end annotation
.end field

.field private final parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

.field private final root:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .param p1, "root"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 1
    .param p1, "root"    # Ljava/nio/file/Path;
    .param p2, "parserConfiguration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "parserConfiguration"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->cache:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->root:Ljava/nio/file/Path;

    .line 31
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 32
    return-void
.end method


# virtual methods
.method public addSourceRoot(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->cache:Ljava/util/Map;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;-><init>(Ljava/nio/file/Path;)V

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->setParserConfiguration(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method public getSourceRoot(Ljava/nio/file/Path;)Ljava/util/Optional;
    .locals 1
    .param p1, "sourceRoot"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceRoot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSourceRoots()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectRoot at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/ProjectRoot;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
