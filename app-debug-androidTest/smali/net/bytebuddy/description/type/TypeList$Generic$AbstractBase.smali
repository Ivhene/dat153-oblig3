.class public abstract Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "TypeList.java"

# interfaces
.implements Lnet/bytebuddy/description/type/TypeList$Generic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeList$Generic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
        "Lnet/bytebuddy/description/type/TypeList$Generic;",
        ">;",
        "Lnet/bytebuddy/description/type/TypeList$Generic;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeList$Generic;"
        }
    .end annotation

    .line 294
    .local p1, "visitor":Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;, "Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor<+Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .local v0, "visited":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 296
    .local v2, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->accept(Lnet/bytebuddy/description/type/TypeDescription$Generic$Visitor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v2    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    goto :goto_0

    .line 298
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asErasures()Lnet/bytebuddy/description/type/TypeList;
    .locals 4

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v0, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 329
    .local v2, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v2    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    goto :goto_0

    .line 331
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asRawTypes()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 339
    .local v0, "typeDescriptions":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 340
    .local v2, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->asRawType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v2    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    goto :goto_0

    .line 342
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList<",
            "Lnet/bytebuddy/description/type/TypeVariableToken;",
            ">;"
        }
    .end annotation

    .line 305
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeVariableToken;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 307
    .local v2, "typeVariable":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-static {v2, p1}, Lnet/bytebuddy/description/type/TypeVariableToken;->of(Lnet/bytebuddy/description/type/TypeDescription$Generic;Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/type/TypeVariableToken;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    .end local v2    # "typeVariable":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    goto :goto_0

    .line 309
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getStackSize()I
    .locals 4

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "stackSize":I
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription$Generic;

    .line 318
    .local v2, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 319
    .end local v2    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    goto :goto_0

    .line 320
    :cond_0
    return v0
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)",
            "Lnet/bytebuddy/description/type/TypeList$Generic;"
        }
    .end annotation

    .line 287
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 283
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/type/TypeList$Generic$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object p1

    return-object p1
.end method
