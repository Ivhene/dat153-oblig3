.class public Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;
.super Ljava/lang/Object;
.source "MemberSubstitution.java"

# interfaces
.implements Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;",
            ">;)V"
        }
    .end annotation

    .line 1800
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    .line 1802
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    .line 1803
    .local v1, "factory":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    instance-of v2, v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;

    if-eqz v2, :cond_0

    .line 1804
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;

    iget-object v3, v3, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1805
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$NoOp;

    if-nez v2, :cond_1

    .line 1806
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v1    # "factory":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1809
    :cond_2
    return-void
.end method

.method protected varargs constructor <init>([Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;)V
    .locals 1
    .param p1, "factory"    # [Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    .line 1792
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;-><init>(Ljava/util/List;)V

    .line 1793
    return-void
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
    iget-object v2, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;

    iget-object p1, p1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement;
    .locals 4
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "typePool"    # Lnet/bytebuddy/pool/TypePool;

    .line 1815
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v0, "replacements":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/asm/MemberSubstitution$Replacement;>;"
    iget-object v1, p0, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory$Compound;->factories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;

    .line 1817
    .local v2, "factory":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    invoke-interface {v2, p1, p2, p3}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/pool/TypePool;)Lnet/bytebuddy/asm/MemberSubstitution$Replacement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1818
    .end local v2    # "factory":Lnet/bytebuddy/asm/MemberSubstitution$Replacement$Factory;
    goto :goto_0

    .line 1819
    :cond_0
    new-instance v1, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;

    invoke-direct {v1, v0}, Lnet/bytebuddy/asm/MemberSubstitution$Replacement$ForFirstBinding;-><init>(Ljava/util/List;)V

    return-object v1
.end method
