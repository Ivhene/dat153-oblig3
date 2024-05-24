.class public Lorg/checkerframework/com/github/javaparser/version/PostProcessors;
.super Ljava/lang/Object;
.source "PostProcessors.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;


# instance fields
.field private final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V
    .locals 2
    .param p1, "postProcessors"    # [Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessors"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->postProcessors:Ljava/util/List;

    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    return-void
.end method

.method static synthetic lambda$process$0(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)V
    .locals 0
    .param p0, "result"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p2, "pp"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "result",
            "configuration",
            "pp"
        }
    .end annotation

    .line 47
    invoke-interface {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;->process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;
    .locals 1
    .param p1, "newProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newProcessor"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->postProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-object p0
.end method

.method public getPostProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->postProcessors:Ljava/util/List;

    return-object v0
.end method

.method public process(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 2
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ParserConfiguration;",
            ")V"
        }
    .end annotation

    .line 47
    .local p1, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->postProcessors:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/version/PostProcessors$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/version/PostProcessors$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ParseResult;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 48
    return-void
.end method

.method public remove(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;
    .locals 2
    .param p1, "postProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "postProcessor"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->postProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    return-object p0

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Trying to remove a post processor that isn\'t there."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public replace(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;
    .locals 0
    .param p1, "oldProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .param p2, "newProcessor"    # Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldProcessor",
            "newProcessor"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->remove(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;

    .line 36
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/version/PostProcessors;->add(Lorg/checkerframework/com/github/javaparser/ParseResult$PostProcessor;)Lorg/checkerframework/com/github/javaparser/version/PostProcessors;

    .line 37
    return-object p0
.end method
