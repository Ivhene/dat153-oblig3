.class final enum Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default$4;
.super Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
.source "ConstructorStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$Default;-><init>(Ljava/lang/String;ILnet/bytebuddy/dynamic/scaffold/subclass/ConstructorStrategy$1;)V

    return-void
.end method


# virtual methods
.method protected doExtractConstructors(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/util/List;
    .locals 4
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ")",
            "Ljava/util/List<",
            "Lnet/bytebuddy/description/method/MethodDescription$Token;",
            ">;"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    .line 150
    .local v0, "superClass":Lnet/bytebuddy/description/type/TypeDescription$Generic;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/description/method/MethodList$Empty;

    invoke-direct {v1}, Lnet/bytebuddy/description/method/MethodList$Empty;-><init>()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription$Generic;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v1

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isPublic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodList;

    :goto_0
    invoke-static {p1}, Lnet/bytebuddy/matcher/ElementMatchers;->is(Ljava/lang/Object;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/MethodList;->asTokenList(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/description/ByteCodeElement$Token$TokenList;

    move-result-object v1

    .line 150
    return-object v1
.end method

.method public doInject(Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .locals 3
    .param p1, "methodRegistry"    # Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;
    .param p2, "methodAttributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;

    .line 157
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;

    sget-object v2, Lnet/bytebuddy/implementation/SuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/SuperMethodCall;

    invoke-direct {v1, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler$ForImplementation;-><init>(Lnet/bytebuddy/implementation/Implementation;)V

    .line 160
    invoke-static {}, Lnet/bytebuddy/dynamic/Transformer$NoOp;->make()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v2

    .line 157
    invoke-interface {p1, v0, v1, p2, v2}, Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;->append(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/dynamic/scaffold/MethodRegistry$Handler;Lnet/bytebuddy/implementation/attribute/MethodAttributeAppender$Factory;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/MethodRegistry;

    move-result-object v0

    return-object v0
.end method
