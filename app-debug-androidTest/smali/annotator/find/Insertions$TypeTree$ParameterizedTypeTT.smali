.class final Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/ParameterizedTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParameterizedTypeTT"
.end annotation


# instance fields
.field private final base:Lannotator/find/Insertions$TypeTree;

.field private final typeArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lannotator/find/Insertions$TypeTree;Ljava/util/List;)V
    .locals 0
    .param p1, "base"    # Lannotator/find/Insertions$TypeTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lannotator/find/Insertions$TypeTree;",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;)V"
        }
    .end annotation

    .line 1430
    .local p2, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1431
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->base:Lannotator/find/Insertions$TypeTree;

    .line 1432
    iput-object p2, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->typeArgs:Ljava/util/List;

    .line 1433
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

    .line 1440
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1436
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PARAMETERIZED_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getType()Lannotator/find/Insertions$TypeTree;
    .locals 1

    .line 1444
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->base:Lannotator/find/Insertions$TypeTree;

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/sun/source/tree/Tree;
    .locals 1

    .line 1426
    invoke-virtual {p0}, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->getType()Lannotator/find/Insertions$TypeTree;

    move-result-object v0

    return-object v0
.end method

.method public getTypeArguments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 1448
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->typeArgs:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1453
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->base:Lannotator/find/Insertions$TypeTree;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<"

    .line 1455
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lannotator/find/Insertions$TypeTree$ParameterizedTypeTT;->typeArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 1456
    .local v3, "t":Lcom/sun/source/tree/Tree;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    const-string v1, ", "

    .line 1459
    .end local v3    # "t":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 1460
    :cond_0
    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
