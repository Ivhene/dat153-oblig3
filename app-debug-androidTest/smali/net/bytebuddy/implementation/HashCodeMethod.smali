.class public Lnet/bytebuddy/implementation/HashCodeMethod;
.super Ljava/lang/Object;
.source "HashCodeMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/HashCodeMethod$Appender;,
        Lnet/bytebuddy/implementation/HashCodeMethod$ValueTransformer;,
        Lnet/bytebuddy/implementation/HashCodeMethod$NullValueGuard;,
        Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# static fields
.field private static final DEFAULT_MULTIPLIER:I = 0x1f

.field private static final DEFAULT_OFFSET:I = 0x11

.field private static final GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

.field private static final HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;


# instance fields
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

.field private final multiplier:I

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

.field private final offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    nop

    .line 63
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 65
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isHashCode()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 66
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 71
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    .line 73
    const-string v1, "getClass"

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->named(Ljava/lang/String;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodList;

    .line 74
    invoke-interface {v0}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    sput-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    .line 71
    return-void
.end method

.method protected constructor <init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V
    .locals 3
    .param p1, "offsetProvider"    # Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    .line 102
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->none()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-direct {p0, p1, v2, v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    .line 103
    return-void
.end method

.method private constructor <init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V
    .locals 0
    .param p1, "offsetProvider"    # Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;
    .param p2, "multiplier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;",
            "I",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;",
            "Lnet/bytebuddy/matcher/ElementMatcher$Junction<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)V"
        }
    .end annotation

    .line 116
    .local p3, "ignored":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .local p4, "nonNullable":Lnet/bytebuddy/matcher/ElementMatcher$Junction;, "Lnet/bytebuddy/matcher/ElementMatcher$Junction<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    .line 118
    iput p2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    .line 119
    iput-object p3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 120
    iput-object p4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    .line 121
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 48
    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->HASH_CODE:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method static synthetic access$100()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 48
    sget-object v0, Lnet/bytebuddy/implementation/HashCodeMethod;->GET_CLASS:Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    return-object v0
.end method

.method public static usingDefaultOffset()Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 1

    .line 148
    const/16 v0, 0x11

    invoke-static {v0}, Lnet/bytebuddy/implementation/HashCodeMethod;->usingOffset(I)Lnet/bytebuddy/implementation/HashCodeMethod;

    move-result-object v0

    return-object v0
.end method

.method public static usingOffset(I)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2
    .param p0, "value"    # I

    .line 158
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    new-instance v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForFixedValue;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForFixedValue;-><init>(I)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method

.method public static usingSuperClassOffset()Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2

    .line 129
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    sget-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForSuperMethodCall;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method

.method public static usingTypeHashOffset(Z)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 2
    .param p0, "dynamic"    # Z

    .line 139
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    if-eqz p0, :cond_0

    sget-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForDynamicTypeHash;

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForStaticTypeHash;->INSTANCE:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider$ForStaticTypeHash;

    :goto_0
    check-cast v1, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;)V

    return-object v0
.end method


# virtual methods
.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 6
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 210
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod$Appender;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;->resolve(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    .line 215
    invoke-interface {p1}, Lnet/bytebuddy/implementation/Implementation$Target;->getInstrumentedType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v3

    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isStatic()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    iget-object v5, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v4, v5}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-static {v4}, Lnet/bytebuddy/matcher/ElementMatchers;->not(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-interface {v3, v4}, Lnet/bytebuddy/description/field/FieldList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/HashCodeMethod$Appender;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;ILjava/util/List;Lnet/bytebuddy/matcher/ElementMatcher;)V

    .line 213
    return-object v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot implement meaningful hash code method for "

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
    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    check-cast p1, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget-object v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object p1, p1, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/HashCodeMethod;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 203
    return-object p1
.end method

.method public withIgnoredFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/HashCodeMethod;"
        }
    .end annotation

    .line 169
    .local p1, "ignored":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v3, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method

.method public withMultiplier(I)Lnet/bytebuddy/implementation/Implementation;
    .locals 4
    .param p1, "multiplier"    # I

    .line 193
    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget-object v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hash code multiplier must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withNonNullableFields(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/implementation/HashCodeMethod;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/matcher/ElementMatcher<",
            "-",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;)",
            "Lnet/bytebuddy/implementation/HashCodeMethod;"
        }
    .end annotation

    .line 181
    .local p1, "nonNullable":Lnet/bytebuddy/matcher/ElementMatcher;, "Lnet/bytebuddy/matcher/ElementMatcher<-Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    new-instance v0, Lnet/bytebuddy/implementation/HashCodeMethod;

    iget-object v1, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->offsetProvider:Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;

    iget v2, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->multiplier:I

    iget-object v3, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->ignored:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    iget-object v4, p0, Lnet/bytebuddy/implementation/HashCodeMethod;->nonNullable:Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    invoke-interface {v4, p1}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->or(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/bytebuddy/implementation/HashCodeMethod;-><init>(Lnet/bytebuddy/implementation/HashCodeMethod$OffsetProvider;ILnet/bytebuddy/matcher/ElementMatcher$Junction;Lnet/bytebuddy/matcher/ElementMatcher$Junction;)V

    return-object v0
.end method
