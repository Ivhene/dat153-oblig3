.class public abstract Lnet/bytebuddy/description/field/FieldList$AbstractBase;
.super Lnet/bytebuddy/matcher/FilterableList$AbstractBase;
.source "FieldList.java"

# interfaces
.implements Lnet/bytebuddy/description/field/FieldList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/field/FieldList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/field/FieldDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$AbstractBase<",
        "TS;",
        "Lnet/bytebuddy/description/field/FieldList<",
        "TS;>;>;",
        "Lnet/bytebuddy/description/field/FieldList<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$AbstractBase;, "Lnet/bytebuddy/description/field/FieldList$AbstractBase<TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$AbstractBase;-><init>()V

    return-void
.end method


# virtual methods
.method public asDefined()Lnet/bytebuddy/description/field/FieldList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$AbstractBase;, "Lnet/bytebuddy/description/field/FieldList$AbstractBase<TS;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "declaredForms":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription;

    .line 75
    .local v2, "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/field/FieldDescription;->asDefined()Lnet/bytebuddy/description/ByteCodeElement$TypeDependant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v2    # "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/field/FieldList$Explicit;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/field/FieldList$Explicit;-><init>(Ljava/util/List;)V

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
            "Lnet/bytebuddy/description/field/FieldDescription$Token;",
            ">;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$AbstractBase;, "Lnet/bytebuddy/description/field/FieldList$AbstractBase<TS;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    .local v0, "tokens":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/field/FieldDescription$Token;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/field/FieldDescription;

    .line 64
    .local v2, "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    invoke-interface {v2, p1}, Lnet/bytebuddy/description/field/FieldDescription;->asToken(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v2    # "fieldDescription":Lnet/bytebuddy/description/field/FieldDescription;
    goto :goto_0

    .line 66
    :cond_0
    new-instance v1, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    invoke-direct {v1, v0}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected wrap(Ljava/util/List;)Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Lnet/bytebuddy/description/field/FieldList<",
            "TS;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$AbstractBase;, "Lnet/bytebuddy/description/field/FieldList$AbstractBase<TS;>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<TS;>;"
    new-instance v0, Lnet/bytebuddy/description/field/FieldList$Explicit;

    invoke-direct {v0, p1}, Lnet/bytebuddy/description/field/FieldList$Explicit;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic wrap(Ljava/util/List;)Lnet/bytebuddy/matcher/FilterableList;
    .locals 0

    .line 56
    .local p0, "this":Lnet/bytebuddy/description/field/FieldList$AbstractBase;, "Lnet/bytebuddy/description/field/FieldList$AbstractBase<TS;>;"
    invoke-virtual {p0, p1}, Lnet/bytebuddy/description/field/FieldList$AbstractBase;->wrap(Ljava/util/List;)Lnet/bytebuddy/description/field/FieldList;

    move-result-object p1

    return-object p1
.end method
