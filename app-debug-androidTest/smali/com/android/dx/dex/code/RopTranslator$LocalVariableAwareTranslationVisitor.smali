.class Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;
.super Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.source "RopTranslator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalVariableAwareTranslationVisitor"
.end annotation


# instance fields
.field private final locals:Lcom/android/dx/rop/code/LocalVariableInfo;

.field final synthetic this$0:Lcom/android/dx/dex/code/RopTranslator;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lcom/android/dx/rop/code/LocalVariableInfo;)V
    .locals 0
    .param p2, "output"    # Lcom/android/dx/dex/code/OutputCollector;
    .param p3, "locals"    # Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 859
    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->this$0:Lcom/android/dx/dex/code/RopTranslator;

    .line 860
    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    .line 861
    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    .line 862
    return-void
.end method


# virtual methods
.method public addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V
    .locals 3
    .param p1, "insn"    # Lcom/android/dx/rop/code/Insn;

    .line 906
    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lcom/android/dx/rop/code/LocalVariableInfo;

    invoke-virtual {v0, p1}, Lcom/android/dx/rop/code/LocalVariableInfo;->getAssignment(Lcom/android/dx/rop/code/Insn;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 908
    .local v0, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v0, :cond_0

    .line 909
    new-instance v1, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lcom/android/dx/rop/code/Insn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/dx/dex/code/LocalStart;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    .line 911
    :cond_0
    return-void
.end method

.method public visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/rop/code/PlainCstInsn;

    .line 874
    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainCstInsn(Lcom/android/dx/rop/code/PlainCstInsn;)V

    .line 875
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V

    .line 876
    return-void
.end method

.method public visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/rop/code/PlainInsn;

    .line 867
    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainInsn(Lcom/android/dx/rop/code/PlainInsn;)V

    .line 868
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V

    .line 869
    return-void
.end method

.method public visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/rop/code/SwitchInsn;

    .line 881
    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitSwitchInsn(Lcom/android/dx/rop/code/SwitchInsn;)V

    .line 882
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V

    .line 883
    return-void
.end method

.method public visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/rop/code/ThrowingCstInsn;

    .line 888
    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingCstInsn(Lcom/android/dx/rop/code/ThrowingCstInsn;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V

    .line 890
    return-void
.end method

.method public visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V
    .locals 0
    .param p1, "insn"    # Lcom/android/dx/rop/code/ThrowingInsn;

    .line 895
    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingInsn(Lcom/android/dx/rop/code/ThrowingInsn;)V

    .line 896
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lcom/android/dx/rop/code/Insn;)V

    .line 897
    return-void
.end method
