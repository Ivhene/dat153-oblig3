.class public Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor;
.super Lorg/checkerframework/com/github/javaparser/version/PostProcessors;
.source "Java10PostProcessor.java"


# instance fields
.field protected final varNodeCreator:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;-><init>([Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V

    .line 12
    new-instance v0, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor;->varNodeCreator:Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;

    .line 22
    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor;->add(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;

    .line 23
    return-void
.end method

.method static synthetic lambda$new$2(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 2
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic lambda$null$0(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)V
    .locals 3
    .param p0, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "n"
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "var"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTokenRange()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;-><init>(Lorg/checkerframework/com/github/javaparser/TokenRange;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->replace(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 18
    :cond_0
    return-void
.end method

.method static synthetic lambda$null$1(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "node"
        }
    .end annotation

    .line 14
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/version/Java10PostProcessor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    return-void
.end method
