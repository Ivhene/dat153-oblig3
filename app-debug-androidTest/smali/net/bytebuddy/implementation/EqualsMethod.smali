.class public Lnet/bytebuddy/implementation/EqualsMethod;
.super Ljava/lang/Object;
.source "EqualsMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;,
        Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;,
        Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;,
        Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;,
        Lnet/bytebuddy/implementation/EqualsMethod$Appender;,
        Lnet/bytebuddy/implementation/EqualsMethod$ValueComparator;,
        Lnet/bytebuddy/implementation/EqualsMethod$NullValueGuard;,
        Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;,
        Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final EQUALS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

.field private final typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->OBJECT:Lnet/bytebuddy/description/type/TypeDescription;

    .line 59
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 60
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isEquals()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 61
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/EqualsMethod;->EQUALS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 58
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;)V
    .locals 6
    .param p1, "superClassCheck"    # Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    .line 94
    sget-object v2, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->EXACT:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    sget-object v5, Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;->INSTANCE:Lnet/bytebuddy/implementation/EqualsMethod$NaturalOrderComparator;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V

    .line 95
    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "superClassCheck"    # Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;
    .param p2, "typeCompatibilityCheck"    # Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;",
            "Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p3, "ignored":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p4, "nonNullable":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p5, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    .line 112
    iput-object p2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    .line 113
    iput-object p3, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 114
    iput-object p4, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 115
    iput-object p5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    .line 116
    return-void
.end method

.method static synthetic access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 53
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod;->EQUALS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static isolated()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 2

    .line 133
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod;

    sget-object v1, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;->DISABLED:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;)V

    return-object v0
.end method

.method public static requiringSuperClassEquality()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 2

    .line 124
    new-instance v0, Lnet/bytebuddy/implementation/EqualsMethod;

    sget-object v1, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;->ENABLED:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;)V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 7
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 229
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v1

    .line 234
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v2, v3}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 235
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 236
    new-instance v1, Lnet/bytebuddy/implementation/EqualsMethod$Appender;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    new-instance v3, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v4, 0x5

    new-array v4, v4, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    .line 237
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 238
    invoke-static {}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadThis()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->REFERENCE:Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;

    .line 239
    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/bytecode/member/MethodVariableAccess;->loadFrom(I)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 240
    invoke-static {}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->onIdentity()Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;

    move-result-object v5

    invoke-virtual {v5}, Lnet/bytebuddy/implementation/EqualsMethod$ConditionalReturn;->returningTrue()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    iget-object v5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    .line 241
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    invoke-direct {v3, v4}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iget-object v4, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v1, v2, v3, v0, v4}, Lnet/bytebuddy/implementation/EqualsMethod$Appender;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Ljava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;)V

    .line 236
    return-object v1

    .line 230
    .end local v0    # "fields":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot implement meaningful equals method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    check-cast p1, Lnet/bytebuddy/implementation/EqualsMethod;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p1, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    iget-object p1, p1, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/EqualsMethod;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 222
    return-object p1
.end method

.method public withEnumerationTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 1

    .line 174
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_ENUMERATION_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod;->withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object v0

    return-object v0
.end method

.method public withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/EqualsMethod;"
        }
    .end annotation

    .line 204
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v6, Lnet/bytebuddy/implementation/EqualsMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    iget-object v3, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v4, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    new-instance v5, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v7, 0x0

    iget-object v8, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object p1, v0, v7

    invoke-direct {v5, v0}, Lnet/bytebuddy/implementation/EqualsMethod$CompoundComparator;-><init>([Ljava/util/Comparator;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/EqualsMethod;"
        }
    .end annotation

    .line 144
    .local p1, "ignored":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v6, Lnet/bytebuddy/implementation/EqualsMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public withNonNullableFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/EqualsMethod;"
        }
    .end annotation

    .line 156
    .local p1, "nonNullable":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v6, Lnet/bytebuddy/implementation/EqualsMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    iget-object v2, p0, Lnet/bytebuddy/implementation/EqualsMethod;->typeCompatibilityCheck:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    iget-object v3, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v0, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public withPrimitiveTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 1

    .line 165
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_PRIMITIVE_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod;->withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object v0

    return-object v0
.end method

.method public withPrimitiveWrapperTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 1

    .line 183
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_PRIMITIVE_WRAPPER_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod;->withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object v0

    return-object v0
.end method

.method public withStringTypedFieldsFirst()Lnet/bytebuddy/implementation/EqualsMethod;
    .locals 1

    .line 192
    sget-object v0, Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;->FOR_STRING_TYPES:Lnet/bytebuddy/implementation/EqualsMethod$TypePropertyComparator;

    invoke-virtual {p0, v0}, Lnet/bytebuddy/implementation/EqualsMethod;->withFieldOrder(Ljava/util/Comparator;)Lnet/bytebuddy/implementation/EqualsMethod;

    move-result-object v0

    return-object v0
.end method

.method public withSubclassEquality()Lnet/bytebuddy/implementation/Implementation;
    .locals 7

    .line 215
    new-instance v6, Lnet/bytebuddy/implementation/EqualsMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/EqualsMethod;->superClassCheck:Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;

    sget-object v2, Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;->SUBCLASS:Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;

    iget-object v3, p0, Lnet/bytebuddy/implementation/EqualsMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v4, p0, Lnet/bytebuddy/implementation/EqualsMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v5, p0, Lnet/bytebuddy/implementation/EqualsMethod;->comparator:Ljava/util/Comparator;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/implementation/EqualsMethod;-><init>(Lnet/bytebuddy/implementation/EqualsMethod$SuperClassCheck;Lnet/bytebuddy/implementation/EqualsMethod$TypeCompatibilityCheck;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;Ljava/util/Comparator;)V

    return-object v6
.end method
