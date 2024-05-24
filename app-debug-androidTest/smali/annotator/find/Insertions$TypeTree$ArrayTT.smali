.class final Lannotator/find/Insertions$TypeTree$ArrayTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/ArrayTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArrayTT"
.end annotation


# instance fields
.field private final componentType:Lannotator/find/Insertions$TypeTree;


# direct methods
.method constructor <init>(Lannotator/find/Insertions$TypeTree;)V
    .locals 0
    .param p1, "componentType"    # Lannotator/find/Insertions$TypeTree;

    .line 1380
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1381
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$ArrayTT;->componentType:Lannotator/find/Insertions$TypeTree;

    .line 1382
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

    .line 1389
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitArrayType(Lcom/sun/source/tree/ArrayTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1385
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->ARRAY_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getType()Lannotator/find/Insertions$TypeTree;
    .locals 1

    .line 1393
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$ArrayTT;->componentType:Lannotator/find/Insertions$TypeTree;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 1377
    invoke-virtual {p0}, Lannotator/find/Insertions$TypeTree$ArrayTT;->getType()Lannotator/find/Insertions$TypeTree;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$ArrayTT;->componentType:Lannotator/find/Insertions$TypeTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
