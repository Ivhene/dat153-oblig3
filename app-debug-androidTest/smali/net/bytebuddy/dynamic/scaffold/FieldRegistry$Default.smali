.class public Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;
.super Ljava/lang/Object;
.source "FieldRegistry.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;,
        Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    .line 111
    return-void
.end method


# virtual methods
.method public compile(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Compiled;
    .locals 9
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 132
    .local v1, "fieldAttributeAppenders":Ljava/util/Map;, "Ljava/util/Map<Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;>;"
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;

    .line 133
    .local v3, "entry":Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    .line 134
    .local v4, "fieldAttributeAppender":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    if-nez v4, :cond_0

    .line 135
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v5

    invoke-interface {v5, p1}, Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;->make(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;

    move-result-object v4

    .line 136
    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getFieldAttributeAppenderFactory()Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    new-instance v5, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;

    invoke-virtual {v3, p1}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/matcher/ElementMatcher;

    move-result-object v6

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;->getTransformer()Lnet/bytebuddy/dynamic/Transformer;

    move-result-object v8

    invoke-direct {v5, v6, v4, v7, v8}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled$Entry;-><init>(Lnet/bytebuddy/matcher/ElementMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v3    # "entry":Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;
    .end local v4    # "fieldAttributeAppender":Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender;
    goto :goto_0

    .line 140
    :cond_1
    new-instance v2, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;

    invoke-direct {v2, p1, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Compiled;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/util/List;)V

    return-object v2
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
    iget-object v2, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    check-cast p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    iget-object p1, p1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepend(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;
    .locals 2
    .param p2, "fieldAttributeAppenderFactory"    # Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/LatentMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;",
            "Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;",
            "Ljava/lang/Object;",
            "Lnet/bytebuddy/dynamic/Transformer<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            ">;)",
            "Lnet/bytebuddy/dynamic/scaffold/FieldRegistry;"
        }
    .end annotation

    .line 120
    .local p1, "matcher":Lnet/bytebuddy/matcher/LatentMatcher;, "Lnet/bytebuddy/matcher/LatentMatcher<-Lnet/bytebuddy/description/field/FieldDescription;>;"
    .local p4, "transformer":Lnet/bytebuddy/dynamic/Transformer;, "Lnet/bytebuddy/dynamic/Transformer<Lnet/bytebuddy/description/field/FieldDescription;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;>;"
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;

    invoke-direct {v1, p1, p2, p3, p4}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default$Entry;-><init>(Lnet/bytebuddy/matcher/LatentMatcher;Lnet/bytebuddy/implementation/attribute/FieldAttributeAppender$Factory;Ljava/lang/Object;Lnet/bytebuddy/dynamic/Transformer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;->entries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    new-instance v1, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;

    invoke-direct {v1, v0}, Lnet/bytebuddy/dynamic/scaffold/FieldRegistry$Default;-><init>(Ljava/util/List;)V

    return-object v1
.end method
