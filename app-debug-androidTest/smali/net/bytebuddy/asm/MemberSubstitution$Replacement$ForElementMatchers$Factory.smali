.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Factory"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final includeSuperCalls:Z

.field private final includeVirtualCalls:Z

.field private final matchFieldRead:Z

.field private final matchFieldWrite:Z

.field private final methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)V
    .locals 0
    .param p3, "matchFieldRead"    # Z
    .param p4, "matchFieldWrite"    # Z
    .param p5, "includeVirtualCalls"    # Z
    .param p6, "includeSuperCalls"    # Z
    .param p7, "substitutionFactory"    # Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;ZZZZ",
            "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;",
            ")V"
        }
    .end annotation

    .line 2074
    .local p1, "fieldMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p2, "methodMatcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2075
    iput-object p1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 2076
    iput-object p2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    .line 2077
    iput-boolean p3, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldRead:Z

    .line 2078
    iput-boolean p4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldWrite:Z

    .line 2079
    iput-boolean p5, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeVirtualCalls:Z

    .line 2080
    iput-boolean p6, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeSuperCalls:Z

    .line 2081
    iput-object p7, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;

    .line 2082
    return-void
.end method

.method protected static of(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    .locals 9
    .param p1, "factory"    # Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/ByteCodeElement;",
            ">;",
            "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;",
            ")",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;"
        }
    .end annotation

    .line 2092
    .local p0, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/ByteCodeElement;>;"
    new-instance v8, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)V

    return-object v8
.end method

.method protected static ofField(Lnet/bytebuddy/matcher/ElementMatcher;ZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    .locals 9
    .param p1, "matchFieldRead"    # Z
    .param p2, "matchFieldWrite"    # Z
    .param p3, "factory"    # Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;ZZ",
            "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;",
            ")",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;"
        }
    .end annotation

    .line 2108
    .local p0, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v8, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)V

    return-object v8
.end method

.method protected static ofMethod(Lnet/bytebuddy/matcher/ElementMatcher;ZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    .locals 9
    .param p1, "includeVirtualCalls"    # Z
    .param p2, "includeSuperCalls"    # Z
    .param p3, "factory"    # Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;ZZ",
            "Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;",
            ")",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;"
        }
    .end annotation

    .line 2124
    .local p0, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v8, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, p0

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;)V

    return-object v8
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
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldRead:Z

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldRead:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldWrite:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldWrite:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeVirtualCalls:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeVirtualCalls:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeSuperCalls:Z

    iget-boolean v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeSuperCalls:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v3, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldRead:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldWrite:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeVirtualCalls:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeSuperCalls:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    .locals 9
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 2131
    new-instance v8, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->fieldMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->methodMatcher:Lnet/bytebuddy/matcher/ElementMatcher;

    iget-boolean v3, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldRead:Z

    iget-boolean v4, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->matchFieldWrite:Z

    iget-boolean v5, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeVirtualCalls:Z

    iget-boolean v6, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->includeSuperCalls:Z

    iget-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers$Factory;->substitutionFactory:Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;

    .line 2137
    invoke-interface {v0, p1, p2, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Substitution$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Substitution;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForElementMatchers;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/matcher/ElementMatcher;ZZZZLnet/bytebuddy/asm/MemberSubstitution$Substitution;)V

    .line 2131
    return-object v8
.end method
