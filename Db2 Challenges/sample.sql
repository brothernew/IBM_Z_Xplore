/* SELECT * FROM IBMUSER.EMP */

/* SELECT * FROM IBMUSER.DEPT */

/* SELECT FIRSTNME FROM IBMUSER.EMP WHERE JOB='MANAGER'; */

/* SELECT COUNT(*) FROM IBMUSER.EMP */

/* SELECT COUNT(*) FROM IBMUSER.EMP WHERE JOB='MANAGER'; */

/* SELECT DEPTNAME, COUNT(EMPNO)
        FROM IBMUSER.DEPT D, IBMUSER.EMP E
        WHERE D.DEPTNO = E.WORKDEPT
        GROUP BY DEPTNAME
        ORDER BY DEPTNAME
*/

/* SELECT MAX(SALARY) SAL
    FROM IBMUSER.EMP
*/

SELECT D.DEPTNAME, SUM(E.SALARY+E.BONUS+E.COMM) AS MAX_COMPENSATION
        FROM IBMUSER.DEPT D, IBMUSER.EMP E
        WHERE D.DEPTNO = E.WORKDEPT
        GROUP BY D.DEPTNAME
        ORDER BY D.DEPTNAME