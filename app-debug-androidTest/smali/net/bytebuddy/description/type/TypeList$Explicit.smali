.class public Lnet/bytebuddy/description/type/TypeList$Explicit;
.super Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Explicit"
.end annotation


# instance fields
.field private final typeDescriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p1, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;-><init>()V

    .line 184
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    .line 185
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 1
    .param p1, "typeDescription"    # [Lnet/bytebuddy/description/type/TypeDescription;

    .line 175
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method public static of(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/utility/JavaConstant;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeList;"
        }
    .end annotation

    .line 194
    .local p0, "constants":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/utility/JavaConstant;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v0, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/utility/JavaConstant;

    .line 196
    .local v2, "constant":Lnet/bytebuddy/utility/JavaConstant;
    invoke-interface {v2}, Lnet/bytebuddy/utility/JavaConstant;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "constant":Lnet/bytebuddy/utility/JavaConstant;
    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;->get(I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p1, "index"    # I

    .line 205
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 212
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$Explicit;->typeDescriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
