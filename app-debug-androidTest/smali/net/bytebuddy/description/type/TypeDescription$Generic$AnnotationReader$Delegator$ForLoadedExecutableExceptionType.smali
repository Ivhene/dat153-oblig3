.class public Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;
.super Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForLoadedExecutableExceptionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
    includeSyntheticFields = true
.end annotation


# static fields
.field protected static final DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;


# instance fields
.field private final executable:Ljava/lang/reflect/AccessibleObject;

.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2967
    const-class v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;

    sput-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;I)V
    .locals 0
    .param p1, "executable"    # Ljava/lang/reflect/AccessibleObject;
    .param p2, "index"    # I

    .line 2985
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator;-><init>()V

    .line 2986
    iput-object p1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->executable:Ljava/lang/reflect/AccessibleObject;

    .line 2987
    iput p2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->index:I

    .line 2988
    return-void
.end method


# virtual methods
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
    iget v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->index:I

    check-cast p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;

    iget v3, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->index:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->executable:Ljava/lang/reflect/AccessibleObject;

    iget-object p1, p1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->index:I

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve()Ljava/lang/reflect/AnnotatedElement;
    .locals 2

    .line 2994
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->DISPATCHER:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;

    iget-object v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType$Dispatcher;->getAnnotatedExceptionTypes(Ljava/lang/Object;)[Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    .line 2995
    .local v0, "element":[Ljava/lang/reflect/AnnotatedElement;
    array-length v1, v0

    if-nez v1, :cond_0

    sget-object v1, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;->INSTANCE:Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$NoOp;

    goto :goto_0

    :cond_0
    iget v1, p0, Lnet/bytebuddy/description/type/TypeDescription$Generic$AnnotationReader$Delegator$ForLoadedExecutableExceptionType;->index:I

    aget-object v1, v0, v1

    :goto_0
    return-object v1
.end method
