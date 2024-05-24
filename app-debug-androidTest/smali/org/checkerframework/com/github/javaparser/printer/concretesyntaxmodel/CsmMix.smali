.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
.super Ljava/lang/Object;
.source "CsmMix.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CSbOy6FyzGb5KEcZKUf2Oio3m4c(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-eqz p1, :cond_1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    .line 24
    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null element in the mix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static synthetic lambda$prettyPrint$0(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p1, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .param p2, "e"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "printer",
            "e"
        }
    .end annotation

    .line 32
    invoke-interface {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method static synthetic lambda$toString$1(Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 38
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    .line 42
    .local v2, "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v0, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 38
    .end local v2    # "csmMix":Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;
    :cond_4
    :goto_1
    return v1
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 52
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmMix$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "CsmMix["

    const-string v2, "]"

    const-string v3, ","

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
