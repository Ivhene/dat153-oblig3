.class final Lannotator/find/Insertions$TypeTree$WildcardTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/WildcardTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WildcardTT"
.end annotation


# instance fields
.field private final bound:Lannotator/find/Insertions$TypeTree;

.field private final kind:Lcom/sun/source/tree/Tree$Kind;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1530
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->UNBOUNDED_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lannotator/find/Insertions$TypeTree$WildcardTT;-><init>(Lcom/sun/source/tree/Tree$Kind;Lannotator/find/Insertions$TypeTree;)V

    .line 1531
    return-void
.end method

.method constructor <init>(Lannotator/find/Insertions$TypeTree;Lscenelib/type/BoundedType$BoundKind;)V
    .locals 1
    .param p1, "bound"    # Lannotator/find/Insertions$TypeTree;
    .param p2, "bk"    # Lscenelib/type/BoundedType$BoundKind;

    .line 1534
    sget-object v0, Lscenelib/type/BoundedType$BoundKind;->SUPER:Lscenelib/type/BoundedType$BoundKind;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->SUPER_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->EXTENDS_WILDCARD:Lcom/sun/source/tree/Tree$Kind;

    :goto_0
    invoke-direct {p0, v0, p1}, Lannotator/find/Insertions$TypeTree$WildcardTT;-><init>(Lcom/sun/source/tree/Tree$Kind;Lannotator/find/Insertions$TypeTree;)V

    .line 1538
    return-void
.end method

.method constructor <init>(Lcom/sun/source/tree/Tree$Kind;Lannotator/find/Insertions$TypeTree;)V
    .locals 0
    .param p1, "kind"    # Lcom/sun/source/tree/Tree$Kind;
    .param p2, "bound"    # Lannotator/find/Insertions$TypeTree;

    .line 1540
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1541
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$WildcardTT;->kind:Lcom/sun/source/tree/Tree$Kind;

    .line 1542
    iput-object p2, p0, Lannotator/find/Insertions$TypeTree$WildcardTT;->bound:Lannotator/find/Insertions$TypeTree;

    .line 1543
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1550
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBound()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 1554
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$WildcardTT;->bound:Lannotator/find/Insertions$TypeTree;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1546
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$WildcardTT;->kind:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1557
    const-string v0, "?"

    return-object v0
.end method
