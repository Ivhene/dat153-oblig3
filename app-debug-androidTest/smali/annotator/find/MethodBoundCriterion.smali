.class public Lannotator/find/MethodBoundCriterion;
.super Ljava/lang/Object;
.source "MethodBoundCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final boundLoc:Lscenelib/annotations/el/BoundLocation;

.field private final boundLocationCriterion:Lannotator/find/Criterion;

.field private final methodName:Ljava/lang/String;

.field private final sigMethodCriterion:Lannotator/find/Criterion;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lscenelib/annotations/el/BoundLocation;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "boundLoc"    # Lscenelib/annotations/el/BoundLocation;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lannotator/find/MethodBoundCriterion;->methodName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lannotator/find/MethodBoundCriterion;->boundLoc:Lscenelib/annotations/el/BoundLocation;

    .line 18
    invoke-static {p1}, Lannotator/find/Criteria;->inMethod(Ljava/lang/String;)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/MethodBoundCriterion;->sigMethodCriterion:Lannotator/find/Criterion;

    .line 19
    invoke-static {p2}, Lannotator/find/Criteria;->atBoundLocation(Lscenelib/annotations/el/BoundLocation;)Lannotator/find/Criterion;

    move-result-object v0

    iput-object v0, p0, Lannotator/find/MethodBoundCriterion;->boundLocationCriterion:Lannotator/find/Criterion;

    .line 20
    return-void
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 39
    sget-object v0, Lannotator/find/Criterion$Kind;->METHOD_BOUND:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 33
    iget-object v0, p0, Lannotator/find/MethodBoundCriterion;->sigMethodCriterion:Lannotator/find/Criterion;

    invoke-interface {v0, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lannotator/find/MethodBoundCriterion;->boundLocationCriterion:Lannotator/find/Criterion;

    .line 34
    invoke-interface {v0, p1}, Lannotator/find/Criterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 24
    if-nez p1, :cond_0

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 28
    invoke-virtual {p0, p1}, Lannotator/find/MethodBoundCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodBoundCriterion: method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/MethodBoundCriterion;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bound boundLoc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/MethodBoundCriterion;->boundLoc:Lscenelib/annotations/el/BoundLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
