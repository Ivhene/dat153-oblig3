.class public abstract Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "TypeList.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "Lnet/bytebuddy/description/type/TypeDescription;",
        "Lnet/bytebuddy/description/type/TypeList;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeList;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackSize()I
    .locals 1

    .line 84
    invoke-static {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public toInternalNames()[Ljava/lang/String;
    .locals 6

    .line 91
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    .local v0, "internalNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, "i":I
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 94
    .local v3, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 95
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    move v1, v4

    goto :goto_0

    .line 96
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    array-length v2, v0

    if-nez v2, :cond_1

    sget-object v2, Lnet/bytebuddy/description/type/TypeList$AbstractBase;->NO_INTERFACES:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    return-object v2
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeList;"
        }
    .end annotation

    .line 77
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList;

    move-result-object p1

    return-object p1
.end method
