.class final enum Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler$2;
.super Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
.source "FieldAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/bytebuddy/implementation/FieldAccessor$ForSetter$TerminationHandler;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/FieldAccessor$1;)V

    return-void
.end method


# virtual methods
.method protected resolve(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1
    .param p1, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 978
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method
