.class final Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/PrimitiveTypeTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrimitiveTypeTT"
.end annotation


# instance fields
.field private final typeKind:Ljavax/lang/model/type/TypeKind;


# direct methods
.method constructor <init>(Ljavax/lang/model/type/TypeKind;)V
    .locals 0
    .param p1, "typeKind"    # Ljavax/lang/model/type/TypeKind;

    .line 1468
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1469
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;->typeKind:Ljavax/lang/model/type/TypeKind;

    .line 1470
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

    .line 1477
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitPrimitiveType(Lcom/sun/source/tree/PrimitiveTypeTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1473
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->PRIMITIVE_TYPE:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getPrimitiveTypeKind()Ljavax/lang/model/type/TypeKind;
    .locals 1

    .line 1481
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;->typeKind:Ljavax/lang/model/type/TypeKind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1485
    sget-object v0, Lannotator/find/Insertions$3;->$SwitchMap$javax$lang$model$type$TypeKind:[I

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;->typeKind:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1}, Ljavax/lang/model/type/TypeKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1497
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected type kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lannotator/find/Insertions$TypeTree$PrimitiveTypeTT;->typeKind:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1491
    :pswitch_0
    const-string v0, "int"

    return-object v0

    .line 1490
    :pswitch_1
    const-string v0, "float"

    return-object v0

    .line 1493
    :pswitch_2
    const-string v0, "short"

    return-object v0

    .line 1492
    :pswitch_3
    const-string v0, "long"

    return-object v0

    .line 1489
    :pswitch_4
    const-string v0, "double"

    return-object v0

    .line 1488
    :pswitch_5
    const-string v0, "char"

    return-object v0

    .line 1487
    :pswitch_6
    const-string v0, "byte"

    return-object v0

    .line 1486
    :pswitch_7
    const-string v0, "boolean"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
