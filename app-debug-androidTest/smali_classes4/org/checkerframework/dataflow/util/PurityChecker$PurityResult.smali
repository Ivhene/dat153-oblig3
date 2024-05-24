.class public Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;
.super Ljava/lang/Object;
.source "PurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/util/PurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PurityResult"
.end annotation


# instance fields
.field protected final notBothReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final notDetReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final notSEFreeReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notSEFreeReasons:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notDetReasons:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notBothReasons:Ljava/util/List;

    .line 83
    const-class v0, Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    .line 84
    return-void
.end method


# virtual methods
.method public addNotBothReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "msgId"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notBothReasons:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public addNotDetReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "msgId"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notDetReasons:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->DETERMINISTIC:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public addNotSEFreeReason(Lcom/sun/source/tree/Tree;Ljava/lang/String;)V
    .locals 2
    .param p1, "t"    # Lcom/sun/source/tree/Tree;
    .param p2, "msgId"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notSEFreeReasons:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/checkerframework/javacutil/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    sget-object v1, Lorg/checkerframework/dataflow/qual/Pure$Kind;->SIDE_EFFECT_FREE:Lorg/checkerframework/dataflow/qual/Pure$Kind;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public getNotBothReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notBothReasons:Ljava/util/List;

    return-object v0
.end method

.method public getNotDetReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notDetReasons:Ljava/util/List;

    return-object v0
.end method

.method public getNotSEFreeReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/javacutil/Pair<",
            "Lcom/sun/source/tree/Tree;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->notSEFreeReasons:Ljava/util/List;

    return-object v0
.end method

.method public getTypes()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    return-object v0
.end method

.method public isPure(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/checkerframework/dataflow/qual/Pure$Kind;",
            ">;)Z"
        }
    .end annotation

    .line 97
    .local p1, "kinds":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/checkerframework/dataflow/qual/Pure$Kind;>;"
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/PurityChecker$PurityResult;->types:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
