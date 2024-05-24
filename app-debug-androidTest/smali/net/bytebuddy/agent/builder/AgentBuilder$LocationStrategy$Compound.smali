.class public Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Compound"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final locationStrategies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;",
            ">;)V"
        }
    .end annotation

    .line 4592
    .local p1, "locationStrategies":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    .line 4594
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 4595
    .local v1, "locationStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    if-eqz v2, :cond_0

    .line 4596
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    iget-object v3, v3, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 4597
    :cond_0
    instance-of v2, v1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$NoOp;

    if-nez v2, :cond_1

    .line 4598
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4600
    .end local v1    # "locationStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    :cond_1
    :goto_1
    goto :goto_0

    .line 4601
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;)V
    .locals 1
    .param p1, "locationStrategy"    # [Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 4584
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;-><init>(Ljava/util/List;)V

    .line 4585
    return-void
.end method


# virtual methods
.method public classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 4
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 4607
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4608
    .local v0, "classFileLocators":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/dynamic/ClassFileLocator;>;"
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;

    .line 4609
    .local v2, "locationStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    invoke-interface {v2, p1, p2}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;->classFileLocator(Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;)Lnet/bytebuddy/dynamic/ClassFileLocator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4610
    .end local v2    # "locationStrategy":Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy;
    goto :goto_0

    .line 4611
    :cond_0
    new-instance v1, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/ClassFileLocator$Compound;-><init>(Ljava/util/List;)V

    return-object v1
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
    iget-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;

    iget-object p1, p1, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$LocationStrategy$Compound;->locationStrategies:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
