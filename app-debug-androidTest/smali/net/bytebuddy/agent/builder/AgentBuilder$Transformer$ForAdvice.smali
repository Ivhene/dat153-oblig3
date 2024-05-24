.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForAdvice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

.field private final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field private final classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

.field private final locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

.field private final poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2752
    invoke-static {}, Lnet/bytebuddy/asm/Advice;->withCustomMapping()Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V

    .line 2753
    return-void
.end method

.method public constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;)V
    .locals 8
    .param p1, "advice"    # Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    .line 2761
    sget-object v2, Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;->SUPPRESSING:Lnet/bytebuddy/asm/Advice$ExceptionHandler$Default;

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/assign/Assigner;->DEFAULT:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    sget-object v4, Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;->INSTANCE:Lnet/bytebuddy/dynamic/ClassFileLocator$NoOp;

    sget-object v5, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;->FAST:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy$Default;

    sget-object v6, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;->STRONG:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$ForClassLoader;

    .line 2767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 2761
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    .line 2768
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V
    .locals 0
    .param p1, "advice"    # Lnet/bytebuddy/asm/Advice$WithCustomMapping;
    .param p2, "exceptionHandler"    # Lnet/bytebuddy/asm/Advice$ExceptionHandler;
    .param p3, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p4, "classFileLocator"    # Lnet/bytebuddy/dynamic/ClassFileLocator;
    .param p5, "poolStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;
    .param p6, "locationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/asm/Advice$WithCustomMapping;",
            "Lnet/bytebuddy/asm/Advice$ExceptionHandler;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;",
            ">;)V"
        }
    .end annotation

    .line 2787
    .local p7, "entries":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2788
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    .line 2789
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 2790
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 2791
    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 2792
    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 2793
    iput-object p6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 2794
    iput-object p7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    .line 2795
    return-void
.end method


# virtual methods
.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2909
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object v0

    return-object v0
.end method

.method public advice(Lnet/bytebuddy/matcher/ElementMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .param p2, "enter"    # Ljava/lang/String;
    .param p3, "exit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2938
    .local p1, "matcher":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v0, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;

    invoke-direct {v0, p1}, Lnet/bytebuddy/matcher/LatentMatcher$Resolved;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;)V

    invoke-virtual {p0, v0, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object v0

    return-object v0
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2920
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;

    invoke-direct {v7, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForUnifiedAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;)V

    .line 2926
    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    .line 2920
    return-object v8
.end method

.method public advice(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
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
            ")",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2950
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/method/MethodDescription;>;"
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    new-instance v7, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;

    invoke-direct {v7, p1, p2, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry$ForSplitAdvice;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    invoke-static {v0, v7}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    .line 2950
    return-object v8
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v3, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    :cond_8
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v1}, Lnet/bytebuddy/asm/Advice$WithCustomMapping;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/dynamic/ClassFileLocator;",
            ">;)",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;"
        }
    .end annotation

    .line 2892
    .local p1, "classFileLocators":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/dynamic/ClassFileLocator;>;"
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    new-instance v4, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 2895
    invoke-static {v0, p1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    .line 2892
    return-object v8
.end method

.method public varargs include([Ljava/lang/ClassLoader;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 5
    .param p1, "classLoader"    # [Ljava/lang/ClassLoader;

    .line 2866
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2867
    .local v0, "classFileLocators":Ljava/util/Set;, "Ljava/util/Set<Lnet/bytebuddy/dynamic/ClassFileLocator;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 2868
    .local v3, "aClassLoader":Ljava/lang/ClassLoader;
    invoke-static {v3}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForClassLoader;->of(Ljava/lang/ClassLoader;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2867
    .end local v3    # "aClassLoader":Ljava/lang/ClassLoader;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2870
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object v1

    return-object v1
.end method

.method public varargs include([Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 1
    .param p1, "classFileLocator"    # [Lnet/bytebuddy/dynamic/ClassFileLocator;

    .line 2881
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->include(Ljava/util/List;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lnet/bytebuddy/dynamic/DynamicType$Builder;Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/DynamicType$Builder;
    .locals 11
    .param p2, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            ")",
            "Lnet/bytebuddy/dynamic/DynamicType$Builder<",
            "*>;"
        }
    .end annotation

    .line 2804
    .local p1, "builder":Lnet/bytebuddy/dynamic/DynamicType$Builder;, "Lnet/bytebuddy/dynamic/DynamicType$Builder<*>;"
    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    invoke-interface {v2, p3, p4}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>([Lnet/bytebuddy/dynamic/ClassFileLocator;)V

    .line 2805
    .local v0, "classFileLocator":Lnet/bytebuddy/dynamic/ClassFileLocator;
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    invoke-interface {v1, v0, p3}, Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;->typePool(Lnet/bytebuddy/dynamic/ClassFileLocator;Ljava/lang/ClassLoader;)Lnet/bytebuddy/pool/TypePool;

    move-result-object v1

    .line 2806
    .local v1, "typePool":Lnet/bytebuddy/pool/TypePool;
    new-instance v2, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    invoke-direct {v2}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;-><init>()V

    .line 2807
    .local v2, "asmVisitorWrapper":Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;
    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;

    .line 2808
    .local v6, "entry":Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
    invoke-virtual {v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->getMatcher()Lnet/bytebuddy/matcher/LatentMatcher;

    move-result-object v7

    invoke-interface {v7, p2}, Lnet/bytebuddy/matcher/LatentMatcher;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v7

    new-array v8, v4, [Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;

    iget-object v9, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    invoke-virtual {v6, v9, v1, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;->resolve(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/pool/TypePool;Lnet/bytebuddy/dynamic/ClassFileLocator;)Lnet/bytebuddy/asm/Advice;

    move-result-object v9

    iget-object v10, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 2809
    invoke-virtual {v9, v10}, Lnet/bytebuddy/asm/Advice;->withAssigner(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/asm/Advice;

    move-result-object v9

    iget-object v10, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 2810
    invoke-virtual {v9, v10}, Lnet/bytebuddy/asm/Advice;->withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/asm/Advice;

    move-result-object v9

    aput-object v9, v8, v3

    .line 2808
    invoke-virtual {v2, v7, v8}, Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;->invokable(Lnet/bytebuddy/matcher/ElementMatcher;[Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods$MethodVisitorWrapper;)Lnet/bytebuddy/asm/AsmVisitorWrapper$ForDeclaredMethods;

    move-result-object v2

    .line 2811
    .end local v6    # "entry":Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice$Entry;
    goto :goto_0

    .line 2812
    :cond_0
    invoke-interface {p1, v2}, Lnet/bytebuddy/dynamic/DynamicType$Builder;->visit(Lnet/bytebuddy/asm/AsmVisitorWrapper;)Lnet/bytebuddy/dynamic/DynamicType$Builder;

    move-result-object v3

    return-object v3
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .param p1, "locationStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 2833
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .param p1, "poolStrategy"    # Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    .line 2822
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public with(Lnet/bytebuddy/implementation/bytecode/assign/Assigner;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .param p1, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 2855
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->exceptionHandler:Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method

.method public withExceptionHandler(Lnet/bytebuddy/asm/Advice$ExceptionHandler;)Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;
    .locals 9
    .param p1, "exceptionHandler"    # Lnet/bytebuddy/asm/Advice$ExceptionHandler;

    .line 2844
    new-instance v8, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->advice:Lnet/bytebuddy/asm/Advice$WithCustomMapping;

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->classFileLocator:Lnet/bytebuddy/dynamic/ClassFileLocator;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->poolStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->locationStrategy:Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;->entries:Ljava/util/List;

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer$ForAdvice;-><init>(Lnet/bytebuddy/asm/Advice$WithCustomMapping;Lnet/bytebuddy/asm/Advice$ExceptionHandler;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/dynamic/ClassFileLocator;Lnet/bytebuddy/agent/builder/AgentBuilder$PoolStrategy;Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;Ljava/util/List;)V

    return-object v8
.end method
