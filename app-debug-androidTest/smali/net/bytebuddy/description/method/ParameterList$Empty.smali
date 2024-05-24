.class public Lnet/bytebuddy/description/method/ParameterList$Empty;
.super Lnet/bytebuddy/matcher/FilterableList$Empty;
.source "ParameterList.java"

# interfaces
.implements Lnet/bytebuddy/description/method/ParameterList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Empty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lnet/bytebuddy/description/method/ParameterDescription;",
        ">",
        "Lnet/bytebuddy/matcher/FilterableList$Empty<",
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

    .line 592
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Empty;, "Lnet/bytebuddy/description/method/ParameterList$Empty<TS;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/FilterableList$Empty;-><init>()V

    return-void
.end method


# virtual methods
.method public asDefined()Lnet/bytebuddy/description/method/ParameterList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/ParameterList<",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Empty;, "Lnet/bytebuddy/description/method/ParameterList$Empty<TS;>;"
    return-object p0
.end method

.method public asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;
    .locals 2
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

    .line 612
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Empty;, "Lnet/bytebuddy/description/method/ParameterList$Empty<TS;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription;>;"
    new-instance v0, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    const/4 v1, 0x0

    new-array v1, v1, [Lnet/bytebuddy/description/method/ParameterDescription$Token;

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;-><init>([Lnet/bytebuddy/description/ByteCodeElement$Token;)V

    return-object v0
.end method

.method public asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 605
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Empty;, "Lnet/bytebuddy/description/method/ParameterList$Empty<TS;>;"
    new-instance v0, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;

    invoke-direct {v0}, Lnet/bytebuddy/description/type/TypeList$Generic$Empty;-><init>()V

    return-object v0
.end method

.method public hasExplicitMetaData()Z
    .locals 1

    .line 598
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterList$Empty;, "Lnet/bytebuddy/description/method/ParameterList$Empty<TS;>;"
    const/4 v0, 0x1

    return v0
.end method
