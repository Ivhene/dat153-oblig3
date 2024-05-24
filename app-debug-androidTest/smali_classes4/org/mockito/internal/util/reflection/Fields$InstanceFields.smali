.class public Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
.super Ljava/lang/Object;
.source "Fields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mockito/internal/util/reflection/Fields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstanceFields"
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;

.field private final instanceFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;)V"
        }
    .end annotation

    .line 117
    .local p2, "instanceFields":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/util/reflection/InstanceField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instance:Ljava/lang/Object;

    .line 119
    iput-object p2, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    .line 120
    return-void
.end method


# virtual methods
.method public assignedValues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 137
    .local v2, "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    invoke-virtual {v2}, Lorg/mockito/internal/util/reflection/InstanceField;->read()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method

.method public filter(Lorg/mockito/internal/util/collections/ListUtil$Filter;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;)",
            "Lorg/mockito/internal/util/reflection/Fields$InstanceFields;"
        }
    .end annotation

    .line 123
    .local p1, "withFilter":Lorg/mockito/internal/util/collections/ListUtil$Filter;, "Lorg/mockito/internal/util/collections/ListUtil$Filter<Lorg/mockito/internal/util/reflection/InstanceField;>;"
    new-instance v0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-static {v2, p1}, Lorg/mockito/internal/util/collections/ListUtil;->filter(Ljava/util/Collection;Lorg/mockito/internal/util/collections/ListUtil$Filter;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v0
.end method

.method public instanceFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public names()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v0, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->instanceFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mockito/internal/util/reflection/InstanceField;

    .line 145
    .local v2, "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    invoke-virtual {v2}, Lorg/mockito/internal/util/reflection/InstanceField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v2    # "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    goto :goto_0

    .line 147
    :cond_0
    return-object v0
.end method

.method public notNull()Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 1

    .line 127
    invoke-static {}, Lorg/mockito/internal/util/reflection/Fields;->access$000()Lorg/mockito/internal/util/collections/ListUtil$Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;->filter(Lorg/mockito/internal/util/collections/ListUtil$Filter;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    move-result-object v0

    return-object v0
.end method
