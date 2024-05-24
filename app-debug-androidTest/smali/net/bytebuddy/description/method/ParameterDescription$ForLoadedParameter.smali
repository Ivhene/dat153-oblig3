.class public abstract Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;
.super Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;
.source "ParameterDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/method/ParameterDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForLoadedParameter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfLegacyVmMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfConstructor;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$OfMethod;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;,
        Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/reflect/AccessibleObject;",
        ">",
        "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;"
    }
.end annotation


# static fields
.field private static final PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;


# instance fields
.field protected final executable:Ljava/lang/reflect/AccessibleObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final index:I

.field protected final parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 232
    const-class v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sput-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/AccessibleObject;ILnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;)V
    .locals 0
    .param p2, "index"    # I
    .param p3, "parameterAnnotationSource"    # Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;",
            ")V"
        }
    .end annotation

    .line 256
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    .local p1, "executable":Ljava/lang/reflect/AccessibleObject;, "TT;"
    invoke-direct {p0}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape$AbstractBase;-><init>()V

    .line 257
    iput-object p1, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    .line 258
    iput p2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    .line 259
    iput-object p3, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->parameterAnnotationSource:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$ParameterAnnotationSource;

    .line 260
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 273
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    iget v0, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    return v0
.end method

.method public getModifiers()I
    .locals 3

    .line 287
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->getModifiers(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 266
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasModifiers()Z
    .locals 1

    .line 296
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->isNamed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->getModifiers()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNamed()Z
    .locals 3

    .line 280
    .local p0, "this":Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;, "Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter<TT;>;"
    sget-object v0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->PARAMETER:Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;

    sget-object v1, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable;->EXECUTABLE:Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;

    iget-object v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->executable:Ljava/lang/reflect/AccessibleObject;

    invoke-interface {v1, v2}, Lnet/bytebuddy/description/method/ParameterList$ForLoadedExecutable$Executable;->getParameters(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter;->index:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/method/ParameterDescription$ForLoadedParameter$Parameter;->isNamePresent(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
