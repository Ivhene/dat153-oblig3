.class public Lnet/bytebuddy/implementation/ToStringMethod;
.super Ljava/lang/Object;
.source "ToStringMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/ToStringMethod$ValueConsumer;,
        Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;,
        Lnet/bytebuddy/implementation/ToStringMethod$Appender;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
.field private final definer:Ljava/lang/String;

.field private final end:Ljava/lang/String;

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

.field private final prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

.field private final separator:Ljava/lang/String;

.field private final start:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    nop

    .line 51
    const-class v0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 53
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments([Ljava/lang/Class;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 54
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 59
    const-class v0, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 61
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isToString()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 62
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 59
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)V
    .locals 7
    .param p1, "prefixResolver"    # Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    .line 100
    const-string v2, "{"

    const-string v3, "}"

    const-string v4, ", "

    const-string v5, "="

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    .line 101
    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .param p1, "prefixResolver"    # Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;
    .param p4, "separator"    # Ljava/lang/String;
    .param p5, "definer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p6, "ignored":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    .line 120
    iput-object p2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    .line 121
    iput-object p3, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    .line 124
    iput-object p6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 125
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 46
    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->STRING_BUILDER_CONSTRUCTOR:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 46
    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod;->TO_STRING:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static prefixedBy(Ljava/lang/String;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;

    .line 161
    if-eqz p0, :cond_0

    .line 164
    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$ForFixedValue;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$ForFixedValue;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1
    .param p0, "prefixResolver"    # Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    .line 174
    new-instance v0, Lnet/bytebuddy/implementation/ToStringMethod;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)V

    return-object v0
.end method

.method public static prefixedByCanonicalClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    .line 142
    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->CANONICAL_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method

.method public static prefixedByFullyQualifiedClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    .line 133
    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->FULLY_QUALIFIED_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method

.method public static prefixedBySimpleClassName()Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 1

    .line 151
    sget-object v0, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;->SIMPLE_CLASS_NAME:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver$Default;

    invoke-static {v0}, Lnet/bytebuddy/implementation/ToStringMethod;->prefixedBy(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;)Lnet/bytebuddy/implementation/ToStringMethod;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/ToStringMethod$Appender;
    .locals 9
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 215
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    new-instance v1, Lnet/bytebuddy/implementation/ToStringMethod$Appender;

    iget-object v4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v7, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    .line 227
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v2

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    iget-object v8, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v3, v8}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-static {v3}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    invoke-interface {v2, v3}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v8

    move-object v2, v1

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lnet/bytebuddy/implementation/ToStringMethod$Appender;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 222
    return-object v1

    .line 220
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Prefix for toString method cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 216
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot implement meaningful toString method for "

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

.method public bridge synthetic appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/ToStringMethod;->appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/ToStringMethod$Appender;

    move-result-object p1

    return-object p1
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    check-cast p1, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v3, p1, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/ToStringMethod;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 208
    return-object p1
.end method

.method public withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/ToStringMethod;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/ToStringMethod;"
        }
    .end annotation

    .line 185
    .local p1, "ignored":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v7, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v2, p0, Lnet/bytebuddy/implementation/ToStringMethod;->start:Ljava/lang/String;

    iget-object v3, p0, Lnet/bytebuddy/implementation/ToStringMethod;->end:Ljava/lang/String;

    iget-object v4, p0, Lnet/bytebuddy/implementation/ToStringMethod;->separator:Ljava/lang/String;

    iget-object v5, p0, Lnet/bytebuddy/implementation/ToStringMethod;->definer:Ljava/lang/String;

    iget-object v0, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v0, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v7
.end method

.method public withTokens(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/bytebuddy/implementation/Implementation;
    .locals 8
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;
    .param p3, "separator"    # Ljava/lang/String;
    .param p4, "definer"    # Ljava/lang/String;

    .line 198
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 201
    new-instance v7, Lnet/bytebuddy/implementation/ToStringMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/ToStringMethod;->prefixResolver:Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;

    iget-object v6, p0, Lnet/bytebuddy/implementation/ToStringMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lnet/bytebuddy/implementation/ToStringMethod;-><init>(Lnet/bytebuddy/implementation/ToStringMethod$PrefixResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v7

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Token values cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
