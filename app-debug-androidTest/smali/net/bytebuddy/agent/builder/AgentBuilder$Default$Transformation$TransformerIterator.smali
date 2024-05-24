.class public Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;
.super Ljava/lang/Object;
.source "AgentBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TransformerIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
        ">;"
    }
.end annotation


# instance fields
.field private final classBeingRedefined:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final classLoader:Ljava/lang/ClassLoader;

.field private final module:Lnet/bytebuddy/utility/JavaModule;

.field private final protectionDomain:Ljava/security/ProtectionDomain;

.field private final transformations:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private transformers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;",
            ">;"
        }
    .end annotation
.end field

.field private final typeDescription:Lnet/bytebuddy/description/type/TypeDescription;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;Ljava/util/List;)V
    .locals 7
    .param p1, "typeDescription"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "module"    # Lnet/bytebuddy/utility/JavaModule;
    .param p5, "protectionDomain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Ljava/lang/ClassLoader;",
            "Lnet/bytebuddy/utility/JavaModule;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "Ljava/util/List<",
            "Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;",
            ">;)V"
        }
    .end annotation

    .line 10518
    .local p4, "classBeingRedefined":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "transformations":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10519
    iput-object p1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    .line 10520
    iput-object p2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    .line 10521
    iput-object p3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    .line 10522
    iput-object p4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    .line 10523
    iput-object p5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    .line 10524
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    .line 10525
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    .line 10526
    :goto_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10527
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    .line 10528
    .local v0, "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    invoke-virtual {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10529
    invoke-virtual {v0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    .line 10531
    .end local v0    # "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    :cond_0
    goto :goto_0

    .line 10532
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 10538
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 10466
    invoke-virtual {p0}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->next()Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    .locals 8

    .line 10546
    :try_start_0
    iget-object v0, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/agent/builder/AgentBuilder$Transformer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10548
    :goto_0
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10549
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    .line 10550
    .local v1, "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10551
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    .line 10553
    .end local v1    # "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    :cond_0
    goto :goto_0

    .line 10546
    :cond_1
    return-object v0

    .line 10548
    :catchall_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10549
    iget-object v1, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformations:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;

    .line 10550
    .restart local v1    # "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getMatcher()Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->typeDescription:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classLoader:Ljava/lang/ClassLoader;

    iget-object v5, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->module:Lnet/bytebuddy/utility/JavaModule;

    iget-object v6, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->classBeingRedefined:Ljava/lang/Class;

    iget-object v7, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->protectionDomain:Ljava/security/ProtectionDomain;

    invoke-interface/range {v2 .. v7}, Lnet/bytebuddy/agent/builder/AgentBuilder$RawMatcher;->matches(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/ClassLoader;Lnet/bytebuddy/utility/JavaModule;Ljava/lang/Class;Ljava/security/ProtectionDomain;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10551
    invoke-virtual {v1}, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;->getTransformers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation$TransformerIterator;->transformers:Ljava/util/Iterator;

    .line 10553
    .end local v1    # "transformation":Lnet/bytebuddy/agent/builder/AgentBuilder$Default$Transformation;
    :cond_2
    goto :goto_1

    .line 10554
    :cond_3
    throw v0
.end method

.method public remove()V
    .locals 2

    .line 10561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
