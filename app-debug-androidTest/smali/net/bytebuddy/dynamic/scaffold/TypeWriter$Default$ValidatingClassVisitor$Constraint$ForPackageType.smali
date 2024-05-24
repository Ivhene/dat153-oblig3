.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;
.super Ljava/lang/Enum;
.source "TypeWriter.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForPackageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2720
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    .line 2715
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2715
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2715
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;
    .locals 1

    .line 2715
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForPackageType;

    return-object v0
.end method


# virtual methods
.method public assertAnnotation()V
    .locals 0

    .line 2749
    return-void
.end method

.method public assertDefaultMethodCall()V
    .locals 0

    .line 2770
    return-void
.end method

.method public assertDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 2763
    return-void
.end method

.method public assertDynamicValueInConstantPool()V
    .locals 0

    .line 2823
    return-void
.end method

.method public assertField(Ljava/lang/String;ZZZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isPublic"    # Z
    .param p3, "isStatic"    # Z
    .param p4, "isFinal"    # Z
    .param p5, "isGeneric"    # Z

    .line 2726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot define a field for a package description type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertHandleInConstantPool()V
    .locals 0

    .line 2791
    return-void
.end method

.method public assertInvokeDynamic()V
    .locals 0

    .line 2798
    return-void
.end method

.method public assertMethod(Ljava/lang/String;ZZZZZZZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isAbstract"    # Z
    .param p3, "isPublic"    # Z
    .param p4, "isPrivate"    # Z
    .param p5, "isStatic"    # Z
    .param p6, "isVirtual"    # Z
    .param p7, "isConstructor"    # Z
    .param p8, "isNoDefaultValue"    # Z
    .param p9, "isGeneric"    # Z

    .line 2741
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot define a method for a package description type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertMethodTypeInConstantPool()V
    .locals 0

    .line 2784
    return-void
.end method

.method public assertNestMate()V
    .locals 0

    .line 2830
    return-void
.end method

.method public assertPermittedSubclass()V
    .locals 0

    .line 2844
    return-void
.end method

.method public assertRecord()V
    .locals 0

    .line 2837
    return-void
.end method

.method public assertSubRoutine()V
    .locals 0

    .line 2805
    return-void
.end method

.method public assertType(IZZ)V
    .locals 2
    .param p1, "modifier"    # I
    .param p2, "definesInterfaces"    # Z
    .param p3, "isGeneric"    # Z

    .line 2811
    const/16 v0, 0x1600

    if-ne p1, v0, :cond_1

    .line 2813
    if-nez p2, :cond_0

    .line 2816
    return-void

    .line 2814
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot implement interface for package type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2812
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A package description type must define 5632 as modifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertTypeAnnotation()V
    .locals 0

    .line 2756
    return-void
.end method

.method public assertTypeInConstantPool()V
    .locals 0

    .line 2777
    return-void
.end method
