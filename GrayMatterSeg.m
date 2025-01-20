[out,pixdimo,dtypeo] = readanalyze('mni_icbm152_t1_tal_nlin_asym_09a.img');
[m,n,r]=size(out);
Graymatter=zeros(m,n,r);

[WMAT1,pixdim,dtype] = readanalyze('mni_icbm152_wm_tal_nlin_asym_09a.img');

[WMAT2,pixdim,dtype] = readanalyze('mni_icbm152_wm_tal_nlin_sym_09a.img');

[WMAT3,pixdim,dtype] = readanalyze('mni_icbm152_wm_tal_nlin_sym_09c.img');

[WMAT4,pixdim,dtype] = readanalyze('mni_icbm152_wm_tal_nlin_asym_09c.img');

[GMAT1,pixdim,dtype] = readanalyze('mni_icbm152_gm_tal_nlin_asym_09a.img');

[GMAT2,pixdim,dtype] = readanalyze('mni_icbm152_gm_tal_nlin_sym_09a.img');

[GMAT3,pixdim,dtype] = readanalyze('mni_icbm152_gm_tal_nlin_sym_09c.img');

[GMAT4,pixdim,dtype] = readanalyze('mni_icbm152_gm_tal_nlin_asym_09c.img');

[CSFAT1,pixdim,dtype] = readanalyze('mni_icbm152_csf_tal_nlin_asym_09a.img');

[CSFAT2,pixdim,dtype] = readanalyze('mni_icbm152_csf_tal_nlin_sym_09a.img');

[CSFAT3,pixdim,dtype] = readanalyze('mni_icbm152_csf_tal_nlin_sym_09c.img');

[CSFAT4,pixdim,dtype] = readanalyze('mni_icbm152_csf_tal_nlin_asym_09c.img');


for x=1:m
    for y=1:n
        for z=1:r
            x
            if out(x,y,z)<75 && out(x,y,z)>50
                                  
                PosteriorWM=normpdf(out(x,y,z),80,1)*priorWM(WMAT1,WMAT2,WMAT3,WMAT4,x,y,z);
                PosteriorGM=normpdf(out(x,y,z),60,1)*priorGM(GMAT1,GMAT2,GMAT3,GMAT4,x,y,z);
                PosteriorCSF=normpdf(out(x,y,z),30,1)*priorCSF(CSFAT1,CSFAT2,CSFAT3,CSFAT4,x,y,z);
                
                if PosteriorGM>PosteriorWM && PosteriorGM>PosteriorCSF
                    Graymatter(x,y,z)=100;
                end
            end
        end
    end
end

writeanalyze(Graymatter,'GM_asym_9a',[1,1,1],'int16');
%writeanalyze(out,'asym_9a',[1,1,1],'int16');            
            
            
            




