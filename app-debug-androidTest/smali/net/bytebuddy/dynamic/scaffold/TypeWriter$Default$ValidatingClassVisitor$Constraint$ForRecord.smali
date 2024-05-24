.class public final enum Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;
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
    name = "ForRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;",
        ">;",
        "Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 3017
    new-instance v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;->INSTANCE:Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    .line 3012
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3012
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3012
    const-class v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;
    .locals 1

    .line 3012
    sget-object v0, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;->$VALUES:[Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/scaffold/TypeWriter$Default$ValidatingClassVisitor$Constraint$ForRecord;

    return-object v0
.end method


# virtual methods
.method public assertAnnotation()V
    .locals 0

    .line 3046
    return-void
.end method

.method public assertDefaultMethodCall()V
    .locals 0

    .line 3067
    return-void
.end method

.method public assertDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 3060
    return-void
.end method

.method public assertDynamicValueInConstantPool()V
    .locals 0

    .line 3118
    return-void
.end method

.method public assertField(Ljava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isPublic"    # Z
    .param p3, "isStatic"    # Z
    .param p4, "isFinal"    # Z
    .param p5, "isGeneric"    # Z

    .line 3024
    return-void
.end method

.method public assertHandleInConstantPool()V
    .locals 0

    .line 3097
    return-void
.end method

.method public assertInvokeDynamic()V
    .locals 0

    .line 3104
    return-void
.end method

.method public assertMethod(Ljava/lang/String;ZZZZZZZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isAbstract"    # Z
    .param p3, "isPublic"    # Z
    .param p4, "isPrivate"    # Z
    .param p5, "isStatic"    # Z
    .param p6, "isVirtual"    # Z
    .param p7, "isConstructor"    # Z
    .param p8, "isDefaultValueIncompatible"    # Z
    .param p9, "isGeneric"    # Z

    .line 3039
    return-void
.end method

.method public assertMethodTypeInConstantPool()V
    .locals 0

    .line 3090
    return-void
.end method

.method public assertNestMate()V
    .locals 0

    .line 3125
    return-void
.end method

.method public assertPermittedSubclass()V
    .locals 0

    .line 3139
    return-void
.end method

.method public assertRecord()V
    .locals 0

    .line 3132
    return-void
.end method

.method public assertSubRoutine()V
    .locals 0

    .line 3111
    return-void
.end method

.method public assertType(IZZ)V
    .locals 2
    .param p1, "modifier"    # I
    .param p2, "definesInterfaces"    # Z
    .param p3, "isGeneric"    # Z

    .line 3073
    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_0

    .line 3076
    return-void

    .line 3074
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot define a record class as abstract"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public assertTypeAnnotation()V
    .locals 0

    .line 3053
    return-void
.end method

.method public assertTypeInConstantPool()V
    .locals 0

    .line 3083
    return-void
.end method
