.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;
.super Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
.source "AgentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ForSplitAdvice"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final enter:Ljava/lang/String;

.field private final exit:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "enter"    # Ljava/lang/String;
    .param p3, "exit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3050
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    invoke-direct {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;)V

    .line 3051
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->enter:Ljava/lang/String;

    .line 3052
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->exit:Ljava/lang/String;

    .line 3053
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    invoke-super {p0, p1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->enter:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->enter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->exit:Ljava/lang/String;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->exit:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->enter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->exit:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected resolve(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;
    .locals 2
    .param p1, "advice"    # Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .param p2, "typePool"    # Lnet/bytebuddy/pool/TypePool;
    .param p3, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 3057
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->enter:Ljava/lang/String;

    invoke-interface {p2, v0}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;->exit:Ljava/lang/String;

    invoke-interface {p2, v1}, Lnet/bytebuddy/pool/TypePool;->describe(Ljava/lang/String;)Lnet/bytebuddy/pool/TypePool$Resolution;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/pool/TypePool$Resolution;->resolve()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->to(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v0

    return-object v0
.end method
