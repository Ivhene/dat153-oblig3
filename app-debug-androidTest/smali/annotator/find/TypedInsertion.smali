.class public abstract Lannotator/find/TypedInsertion;
.super Lannotator/find/Insertion;
.source "TypedInsertion.java"


# instance fields
.field protected annotationsOnly:Z

.field protected innerTypeInsertions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation
.end field

.field protected type:Lscenelib/type/Type;


# direct methods
.method public constructor <init>(Lscenelib/type/Type;Lannotator/find/Criteria;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/type/Type;",
            "Lannotator/find/Criteria;",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p3, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lannotator/find/TypedInsertion;-><init>(Lscenelib/type/Type;Lannotator/find/Criteria;ZLjava/util/List;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lscenelib/type/Type;Lannotator/find/Criteria;ZLjava/util/List;)V
    .locals 1
    .param p1, "type"    # Lscenelib/type/Type;
    .param p2, "criteria"    # Lannotator/find/Criteria;
    .param p3, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/type/Type;",
            "Lannotator/find/Criteria;",
            "Z",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p4, "innerTypeInsertions":Ljava/util/List;, "Ljava/util/List<Lannotator/find/Insertion;>;"
    invoke-direct {p0, p2, p3}, Lannotator/find/Insertion;-><init>(Lannotator/find/Criteria;Z)V

    .line 54
    iput-object p1, p0, Lannotator/find/TypedInsertion;->type:Lscenelib/type/Type;

    .line 55
    iput-object p4, p0, Lannotator/find/TypedInsertion;->innerTypeInsertions:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lannotator/find/TypedInsertion;->annotationsOnly:Z

    .line 57
    return-void
.end method

.method public static getBaseType(Lscenelib/type/Type;)Lscenelib/type/DeclaredType;
    .locals 2
    .param p0, "type"    # Lscenelib/type/Type;

    .line 95
    sget-object v0, Lannotator/find/TypedInsertion$1;->$SwitchMap$scenelib$type$Type$Kind:[I

    invoke-virtual {p0}, Lscenelib/type/Type;->getKind()Lscenelib/type/Type$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lscenelib/type/Type$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 101
    :pswitch_0
    move-object v0, p0

    check-cast v0, Lscenelib/type/ArrayType;

    invoke-virtual {v0}, Lscenelib/type/ArrayType;->getComponentType()Lscenelib/type/Type;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/TypedInsertion;->getBaseType(Lscenelib/type/Type;)Lscenelib/type/DeclaredType;

    move-result-object v0

    return-object v0

    .line 99
    :pswitch_1
    move-object v0, p0

    check-cast v0, Lscenelib/type/BoundedType;

    invoke-virtual {v0}, Lscenelib/type/BoundedType;->getName()Lscenelib/type/DeclaredType;

    move-result-object v0

    invoke-static {v0}, Lannotator/find/TypedInsertion;->getBaseType(Lscenelib/type/Type;)Lscenelib/type/DeclaredType;

    move-result-object v0

    return-object v0

    .line 97
    :pswitch_2
    move-object v0, p0

    check-cast v0, Lscenelib/type/DeclaredType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBaseType()Lscenelib/type/DeclaredType;
    .locals 1

    .line 91
    iget-object v0, p0, Lannotator/find/TypedInsertion;->type:Lscenelib/type/Type;

    invoke-static {v0}, Lannotator/find/TypedInsertion;->getBaseType(Lscenelib/type/Type;)Lscenelib/type/DeclaredType;

    move-result-object v0

    return-object v0
.end method

.method public getInnerTypeInsertions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lannotator/find/Insertion;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lannotator/find/TypedInsertion;->innerTypeInsertions:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lscenelib/type/Type;
    .locals 1

    .line 79
    iget-object v0, p0, Lannotator/find/TypedInsertion;->type:Lscenelib/type/Type;

    return-object v0
.end method

.method public setAnnotationsOnly(Z)V
    .locals 0
    .param p1, "annotationsOnly"    # Z

    .line 64
    iput-boolean p1, p0, Lannotator/find/TypedInsertion;->annotationsOnly:Z

    .line 65
    return-void
.end method

.method public setType(Lscenelib/type/Type;)V
    .locals 0
    .param p1, "type"    # Lscenelib/type/Type;

    .line 71
    iput-object p1, p0, Lannotator/find/TypedInsertion;->type:Lscenelib/type/Type;

    .line 72
    return-void
.end method
