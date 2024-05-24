.class public Lorg/mockito/internal/util/reflection/SuperTypesLastSorter;
.super Ljava/lang/Object;
.source "SuperTypesLastSorter.java"


# static fields
.field private static final compareFieldsByName:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter;->compareFieldsByName:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 2
    .param p0, "o1"    # Ljava/lang/reflect/Field;
    .param p1, "o2"    # Ljava/lang/reflect/Field;

    .line 58
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static sortSuperTypesLast(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 27
    .local p0, "unsortedFields":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/reflect/Field;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    sget-object v1, Lorg/mockito/internal/util/reflection/SuperTypesLastSorter;->compareFieldsByName:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 35
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 36
    .local v3, "ft":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v4, v1

    .line 37
    .local v4, "newPos":I
    add-int/lit8 v5, v1, 0x1

    .local v5, "j":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 38
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 40
    .local v6, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v3, v6, :cond_0

    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 41
    move v4, v5

    .line 37
    .end local v6    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 45
    .end local v5    # "j":I
    :cond_1
    if-ne v4, v1, :cond_2

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 48
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    invoke-interface {v0, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 51
    .end local v2    # "f":Ljava/lang/reflect/Field;
    .end local v3    # "ft":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "newPos":I
    :goto_2
    goto :goto_0

    .line 53
    :cond_3
    return-object v0
.end method
