.class public abstract Lnet/bytebuddy/description/method/ParameterList$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "ParameterList.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/method/ParameterDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "TS;",
        "Lnet/bytebuddy/description/method/ParameterList<",
        "TS;>;>;",
        "Lnet/bytebuddy/description/method/ParameterList<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public asDefined()Lnet/bytebuddy/description/method/ParameterList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v0, "declaredForms":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 117
    .local v2, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    goto :goto_0

    .line 119
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/method/ParameterList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/method/ParameterList$Explicit;-><init>(Ljava/util/List;)V

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
            "Lnet/bytebuddy/description/method/ParameterDescription$Token;",
            ">;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/method/ParameterDescription$Token;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 95
    .local v2, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/method/ParameterDescription;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    goto :goto_0

    .line 97
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 4

    .line 104
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 106
    .local v2, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v2    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Explicit;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public hasExplicitMetaData()Z
    .locals 3

    .line 81
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/ParameterDescription;

    .line 82
    .local v1, "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->isNamed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lnet/bytebuddy/description/method/ParameterDescription;->hasModifiers()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 85
    .end local v1    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    :cond_0
    goto :goto_0

    .line 83
    .restart local v1    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 86
    .end local v1    # "parameterDescription":Lnet/bytebuddy/description/method/ParameterDescription;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/method/ParameterList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "TS;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-instance v0, Lnet/bytebuddy/description/method/ParameterList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/method/ParameterList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 75
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$AbstractBase;, "Lnet/bytebuddy/description/method/ParameterList$AbstractBase<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/method/ParameterList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/method/ParameterList;

    move-result-object p1

    return-object p1
.end method
