.class final Lannotator/find/Insertions$TypeTree$IdentifierTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/IdentifierTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IdentifierTT"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "dname"    # Ljava/lang/String;

    .line 1506
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1507
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$IdentifierTT;->name:Ljava/lang/String;

    .line 1508
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

    .line 1515
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1511
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->IDENTIFIER:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getName()Ljavax/lang/model/element/Name;
    .locals 2

    .line 1519
    new-instance v0, Lannotator/find/Insertions$TypeTree$TypeName;

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$IdentifierTT;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lannotator/find/Insertions$TypeTree$TypeName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1522
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$IdentifierTT;->name:Ljava/lang/String;

    return-object v0
.end method
