.class public Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;
.super Ljava/lang/Object;
.source "ReturnsEmptyValues.java"

# interfaces
.implements Lorg/mockito/stubbing/Answer;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/mockito/stubbing/Answer<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1bbb005f3cd1fb2bL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public answer(Lorg/mockito/invocation/InvocationOnMock;)Ljava/lang/Object;
    .locals 4
    .param p1, "invocation"    # Lorg/mockito/invocation/InvocationOnMock;

    .line 73
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isToStringMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "mock":Ljava/lang/Object;
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockName(Ljava/lang/Object;)Lorg/mockito/mock/MockName;

    move-result-object v1

    .line 76
    .local v1, "name":Lorg/mockito/mock/MockName;
    invoke-interface {v1}, Lorg/mockito/mock/MockName;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {v0}, Lorg/mockito/internal/util/MockUtil;->getMockSettings(Ljava/lang/Object;)Lorg/mockito/mock/MockCreationSettings;

    move-result-object v3

    invoke-interface {v3}, Lorg/mockito/mock/MockCreationSettings;->getTypeToMock()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hashCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    return-object v2

    .line 82
    :cond_0
    invoke-interface {v1}, Lorg/mockito/mock/MockName;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 84
    .end local v0    # "mock":Ljava/lang/Object;
    .end local v1    # "name":Lorg/mockito/mock/MockName;
    :cond_1
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lorg/mockito/internal/util/ObjectMethodsGuru;->isCompareToMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMock()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/mockito/invocation/InvocationOnMock;->getArgument(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 92
    :cond_3
    invoke-interface {p1}, Lorg/mockito/invocation/InvocationOnMock;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lorg/mockito/internal/stubbing/defaultanswers/ReturnsEmptyValues;->returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method returnValueFor(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p1}, Lorg/mockito/internal/util/Primitives;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    const-class v0, Ljava/lang/Iterable;

    if-ne p1, v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 104
    :cond_1
    const-class v0, Ljava/util/Collection;

    if-ne p1, v0, :cond_2

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    .line 106
    :cond_2
    const-class v0, Ljava/util/Set;

    if-ne p1, v0, :cond_3

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 108
    :cond_3
    const-class v0, Ljava/util/HashSet;

    if-ne p1, v0, :cond_4

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 110
    :cond_4
    const-class v0, Ljava/util/SortedSet;

    if-ne p1, v0, :cond_5

    .line 111
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0

    .line 112
    :cond_5
    const-class v0, Ljava/util/TreeSet;

    if-ne p1, v0, :cond_6

    .line 113
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0

    .line 114
    :cond_6
    const-class v0, Ljava/util/LinkedHashSet;

    if-ne p1, v0, :cond_7

    .line 115
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0

    .line 116
    :cond_7
    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_8

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    .line 118
    :cond_8
    const-class v0, Ljava/util/LinkedList;

    if-ne p1, v0, :cond_9

    .line 119
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    .line 120
    :cond_9
    const-class v0, Ljava/util/ArrayList;

    if-ne p1, v0, :cond_a

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 122
    :cond_a
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_b

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 124
    :cond_b
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_c

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 126
    :cond_c
    const-class v0, Ljava/util/SortedMap;

    if-ne p1, v0, :cond_d

    .line 127
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0

    .line 128
    :cond_d
    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_e

    .line 129
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0

    .line 130
    :cond_e
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_f

    .line 131
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0

    .line 132
    :cond_f
    const-string v0, "java.util.Optional"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 133
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptional()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_10
    const-string v0, "java.util.OptionalDouble"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 135
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalDouble()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 136
    :cond_11
    const-string v0, "java.util.OptionalInt"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 137
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalInt()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 138
    :cond_12
    const-string v0, "java.util.OptionalLong"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyOptionalLong()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 140
    :cond_13
    const-string v0, "java.util.stream.Stream"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 141
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 142
    :cond_14
    const-string v0, "java.util.stream.DoubleStream"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 143
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyDoubleStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 144
    :cond_15
    const-string v0, "java.util.stream.IntStream"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 145
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyIntStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 146
    :cond_16
    const-string v0, "java.util.stream.LongStream"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyLongStream()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 148
    :cond_17
    const-string v0, "java.time.Duration"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 149
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyDuration()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_18
    const-string v0, "java.time.Period"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 151
    invoke-static {}, Lorg/mockito/internal/util/JavaEightUtil;->emptyPeriod()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 155
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method
