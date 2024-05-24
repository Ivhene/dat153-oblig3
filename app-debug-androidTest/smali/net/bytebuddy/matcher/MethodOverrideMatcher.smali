.class public Lnet/bytebuddy/matcher/MethodOverrideMatcher;
.super Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;
.source "MethodOverrideMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lnet/bytebuddy/description/method/MethodDescription;",
        ">",
        "Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final matcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/type/TypeDescription$Generic;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/type/TypeDescription$Generic;>;"
    invoke-direct {p0}, Lnet/bytebuddy/matcher/ElementMatcher$Junction$AbstractBase;-><init>()V

    .line 48
    iput-object p1, p0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 49
    return-void
.end method

.method private matches(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/Set;)Z
    .locals 3
    .param p1, "target"    # Lnet/bytebuddy/description/method/MethodDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;",
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)Z"
        }
    .end annotation

    .line 73
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    .local p2, "typeDefinitions":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDefinition;>;"
    .local p3, "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 74
    .local v1, "anInterface":Lnet/bytebuddy/description/type/TypeDefinition;
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v1}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 77
    .end local v1    # "anInterface":Lnet/bytebuddy/description/type/TypeDefinition;
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private matches(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;)Z
    .locals 4
    .param p1, "target"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p2, "typeDefinition"    # Lnet/bytebuddy/description/type/TypeDefinition;

    .line 89
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isVirtual()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/method/MethodDescription;

    .line 90
    .local v1, "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    invoke-interface {v1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v2

    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->asSignatureToken()Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/bytebuddy/description/method/MethodDescription$SignatureToken;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iget-object v0, p0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDefinition;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/ElementMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x1

    return v0

    .line 97
    .end local v1    # "methodDescription":Lnet/bytebuddy/description/method/MethodDescription;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    check-cast p1, Lnet/bytebuddy/matcher/MethodOverrideMatcher;

    iget-object p1, p1, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    check-cast p1, Lnet/bytebuddy/description/method/MethodDescription;

    invoke-virtual {p0, p1}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;)Z

    move-result p1

    return p1
.end method

.method public matches(Lnet/bytebuddy/description/method/MethodDescription;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 55
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    .local p1, "target":Lnet/bytebuddy/description/method/MethodDescription;, "TT;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v0, "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-interface {p1}, Lnet/bytebuddy/description/method/MethodDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDefinition;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 57
    .local v2, "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    invoke-direct {p0, p1, v2}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matches(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 60
    .end local v2    # "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    :cond_0
    goto :goto_0

    .line 58
    .restart local v2    # "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 61
    .end local v2    # "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    .local p0, "this":Lnet/bytebuddy/matcher/MethodOverrideMatcher;, "Lnet/bytebuddy/matcher/MethodOverrideMatcher<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOverriddenFrom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/matcher/MethodOverrideMatcher;->matcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
