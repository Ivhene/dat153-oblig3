.class final Lannotator/find/Insertions$TypeTree$MemberSelectTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/MemberSelectTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemberSelectTT"
.end annotation


# instance fields
.field private final expr:Lannotator/find/Insertions$TypeTree;

.field private final name:Ljavax/lang/model/element/Name;


# direct methods
.method constructor <init>(Lannotator/find/Insertions$TypeTree;Ljavax/lang/model/element/Name;)V
    .locals 0
    .param p1, "expr"    # Lannotator/find/Insertions$TypeTree;
    .param p2, "name"    # Ljavax/lang/model/element/Name;

    .line 1403
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1404
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->expr:Lannotator/find/Insertions$TypeTree;

    .line 1405
    iput-object p2, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->name:Ljavax/lang/model/element/Name;

    .line 1406
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

    .line 1413
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lannotator/find/Insertions$TypeTree;
    .locals 1

    .line 1417
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->expr:Lannotator/find/Insertions$TypeTree;

    return-object v0
.end method

.method public bridge synthetic getExpression()Lcom/sun/source/tree/ExpressionTree;
    .locals 1

    .line 1399
    invoke-virtual {p0}, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->getExpression()Lannotator/find/Insertions$TypeTree;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljavax/lang/model/element/Name;
    .locals 1

    .line 1420
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->name:Ljavax/lang/model/element/Name;

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1409
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->MEMBER_SELECT:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->expr:Lannotator/find/Insertions$TypeTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$MemberSelectTT;->name:Ljavax/lang/model/element/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
