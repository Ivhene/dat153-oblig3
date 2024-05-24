.class public abstract Lorg/mockito/internal/util/reflection/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .locals 1

    .line 21
    invoke-static {}, Lorg/mockito/internal/util/reflection/Fields;->nullField()Lorg/mockito/internal/util/collections/ListUtil$Filter;

    move-result-object v0

    return-object v0
.end method

.method public static allDeclaredFieldsOf(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 3
    .param p0, "instance"    # Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v0, "instanceFields":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/util/reflection/InstanceField;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 32
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/mockito/internal/util/reflection/Fields;->instanceFieldsIn(Ljava/lang/Object;[Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 36
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v1, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    invoke-direct {v1, p0, v0}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v1
.end method

.method public static varargs annotatedBy([Ljava/lang/Class;)Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 69
    .local p0, "annotations":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    new-instance v0, Lorg/mockito/internal/util/reflection/Fields$1;

    invoke-direct {v0, p0}, Lorg/mockito/internal/util/reflection/Fields$1;-><init>([Ljava/lang/Class;)V

    return-object v0
.end method

.method public static declaredFieldsOf(Ljava/lang/Object;)Lorg/mockito/internal/util/reflection/Fields$InstanceFields;
    .locals 2
    .param p0, "instance"    # Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "instanceFields":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/util/reflection/InstanceField;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mockito/internal/util/reflection/Fields;->instanceFieldsIn(Ljava/lang/Object;[Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    new-instance v1, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;

    invoke-direct {v1, p0, v0}, Lorg/mockito/internal/util/reflection/Fields$InstanceFields;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    return-object v1
.end method

.method private static instanceFieldsIn(Ljava/lang/Object;[Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 5
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "instanceDeclaredFields":Ljava/util/List;, "Ljava/util/List<Lorg/mockito/internal/util/reflection/InstanceField;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 54
    .local v3, "field":Ljava/lang/reflect/Field;
    new-instance v4, Lorg/mockito/internal/util/reflection/InstanceField;

    invoke-direct {v4, v3, p0}, Lorg/mockito/internal/util/reflection/InstanceField;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 55
    .local v4, "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "instanceField":Lorg/mockito/internal/util/reflection/InstanceField;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-object v0
.end method

.method private static nullField()Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/mockito/internal/util/reflection/Fields$2;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/Fields$2;-><init>()V

    return-object v0
.end method

.method public static syntheticField()Lorg/mockito/internal/util/collections/ListUtil$Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mockito/internal/util/collections/ListUtil$Filter<",
            "Lorg/mockito/internal/util/reflection/InstanceField;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/mockito/internal/util/reflection/Fields$3;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/Fields$3;-><init>()V

    return-object v0
.end method
