.class public Lannotator/find/TypeArgumentCriterion;
.super Ljava/lang/Object;
.source "TypeArgumentCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final loc:Lscenelib/annotations/el/RelativeLocation;

.field private final methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/RelativeLocation;)V
    .locals 0
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "loc"    # Lscenelib/annotations/el/RelativeLocation;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lannotator/find/TypeArgumentCriterion;->methodName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lannotator/find/TypeArgumentCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    .line 18
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 55
    sget-object v0, Lannotator/find/Criterion$Kind;->TYPE_ARGUMENT:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 6
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 31
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getParentPath()Lcom/sun/source/util/TreePath;

    move-result-object v1

    .line 34
    .local v1, "parentPath":Lcom/sun/source/util/TreePath;
    invoke-virtual {v1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v2

    .line 37
    .local v2, "parent":Lcom/sun/source/tree/Tree;
    sget-object v3, Lannotator/find/TypeArgumentCriterion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v2}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 45
    invoke-virtual {p0, v1}, Lannotator/find/TypeArgumentCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 42
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 43
    .local v3, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    goto :goto_0

    .line 39
    .end local v3    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;

    invoke-virtual {v3}, Lcom/sun/tools/javac/tree/JCTree$JCMemberReference;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    .line 40
    .restart local v3    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    nop

    .line 48
    :goto_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lannotator/find/TypeArgumentCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v4, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ltz v4, :cond_1

    iget-object v4, p0, Lannotator/find/TypeArgumentCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v4, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lannotator/find/TypeArgumentCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    iget v4, v4, Lscenelib/annotations/el/RelativeLocation;->index:I

    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 48
    :goto_1
    return v0

    .line 31
    .end local v1    # "parentPath":Lcom/sun/source/util/TreePath;
    .end local v2    # "parent":Lcom/sun/source/tree/Tree;
    .end local v3    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    :cond_2
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 22
    if-nez p1, :cond_0

    .line 23
    const/4 v0, 0x0

    return v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lannotator/find/TypeArgumentCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeArgumentCriterion: in method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/TypeArgumentCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/TypeArgumentCriterion;->loc:Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
