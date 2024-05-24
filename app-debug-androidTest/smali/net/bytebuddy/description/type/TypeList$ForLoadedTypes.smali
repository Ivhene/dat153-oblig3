.class public Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;
.super Lnet/bytebuddy/description/type/TypeList$AbstractBase;
.source "TypeList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedTypes"
.end annotation


# instance fields
.field private final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;"
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
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 126
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Class<*>;>;"
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeList$AbstractBase;-><init>()V

    .line 127
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    .line 128
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 118
    .local p1, "type":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;-><init>(Ljava/util/List;)V

    .line 119
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 105
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->get(I)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1
    .param p1, "index"    # I

    .line 134
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 141
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toInternalNames()[Ljava/lang/String;
    .locals 6

    .line 148
    iget-object v0, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 149
    .local v0, "internalNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, "i":I
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 151
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-static {v3}, Lnet/bytebuddy/jar/asm/Type;->getInternalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 152
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v1, v4

    goto :goto_0

    .line 153
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    array-length v2, v0

    if-nez v2, :cond_1

    sget-object v2, Lnet/bytebuddy/description/type/TypeList$ForLoadedTypes;->NO_INTERFACES:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    return-object v2
.end method
